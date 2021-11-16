import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/param/create_cart_session_param.dart';
import 'package:flutter/material.dart';

class ModifierGroupWidget extends StatefulWidget {
  final OutletListProductDataModifierGroupResponse modifierGroup;
  final OutletListProductDataSubModifierGroupResponse? selectedModifier;
  final void Function(CreateCartSessionItemModifierParam) onModifierSelected;
  const ModifierGroupWidget({
    Key? key,
    required this.modifierGroup,
    required this.onModifierSelected,
    required this.selectedModifier,
  }) : super(key: key);

  @override
  _ModifierGroupWidgetState createState() => _ModifierGroupWidgetState();
}

class _ModifierGroupWidgetState extends State<ModifierGroupWidget> {
  OutletListProductDataSubModifierGroupResponse? selectedModifier;

  @override
  void initState() {
    super.initState();
    selectedModifier = widget.selectedModifier;
  }

  @override
  Widget build(BuildContext context) {
    final modifierGroup = widget.modifierGroup;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          modifierGroup.name,
          style: AppFont.textBlack14Bold,
        ),
        SizedBox(
          height: 5,
        ),
        if (modifierGroup.minQuantity > 0)
          Text(
            '*min ${modifierGroup.minQuantity} item',
            style: AppFont.textBlack12Regular.copyWith(
              color: AppColors.red,
            ),
          ),
        Text(
          '*max ${modifierGroup.maxQuantity} item',
          style: AppFont.textBlack12Regular.copyWith(
            color: AppColors.red,
          ),
        ),
        ...modifierGroup.modifiers.map((modifier) {
          return ModifierItemWidget(
            modifier: modifier,
            toggleable: modifierGroup.minQuantity <= 0,
            onModifierSelected: (selectedModifier) {
              widget.onModifierSelected(
                CreateCartSessionItemModifierParam(
                  modifierGroupId: modifierGroup.id,
                  modifierId: int.parse(selectedModifier!.id),
                  qty: 1,
                ),
              );
              setState(() {
                this.selectedModifier = selectedModifier;
              });
            },
            selectedModifier: selectedModifier,
          );
        }),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

class ModifierItemWidget extends StatelessWidget {
  final bool toggleable;
  final OutletListProductDataSubModifierGroupResponse modifier;
  final OutletListProductDataSubModifierGroupResponse? selectedModifier;
  final void Function(OutletListProductDataSubModifierGroupResponse?)?
      onModifierSelected;

  const ModifierItemWidget({
    Key? key,
    required this.modifier,
    required this.selectedModifier,
    required this.onModifierSelected,
    required this.toggleable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RadioListTile<OutletListProductDataSubModifierGroupResponse>(
      dense: true,
      contentPadding: EdgeInsets.zero,
      onChanged: onModifierSelected,
      groupValue: selectedModifier,
      value: modifier,
      toggleable: toggleable,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            modifier.name,
            style: AppFont.textBlack14Regular,
          ),
          Text(
            '+ ${CommonUtils.currencyFormat(modifier.price.toDouble())}',
            style: AppFont.textBlack14Regular,
          ),
        ],
      ),
    );
  }
}
