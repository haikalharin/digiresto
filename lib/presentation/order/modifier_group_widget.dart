import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/param/create_cart_session_param.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

/*"allowMultiple": "1", (max count multiple count modifier) (0 = unlimited)
        "allowQuantity": "1", (max count allowed per modifier) (0 = unlimited)
        "minQuantity": "1", (min selected modifier per group)
        "maxQuantity": "1", (max selected modifier per group)*/

class ModifierGroupWidget extends StatefulWidget {
  final OutletListProductDataModifierGroupResponse modifierGroup;
  final List<OutletListProductDataSubModifierGroupResponse> selectedModifier;
  final Map<String, int> mapQuantity;
  final void Function(
    List<CreateCartSessionItemModifierParam> listSelected,
    bool isValid,
    bool isMultiple,
  ) onModifierSelected;
  const ModifierGroupWidget({
    Key? key,
    required this.modifierGroup,
    required this.onModifierSelected,
    required this.selectedModifier,
    required this.mapQuantity,
  }) : super(key: key);

  @override
  _ModifierGroupWidgetState createState() => _ModifierGroupWidgetState();
}

class _ModifierGroupWidgetState extends State<ModifierGroupWidget> {
  late List<OutletListProductDataSubModifierGroupResponse> _selectedModifier;
  late int _groupQuantity;
  late int _minQuantity;
  late int _maxQuantity;
  late int _allowMultiple;
  late int _allowQuantity;
  late Map<String, int> _mapQuantity;

  void updateList() {
    final list = _selectedModifier
        .map(
          (e) => CreateCartSessionItemModifierParam(
            modifierGroupId: widget.modifierGroup.id,
            modifierId: int.parse(e.id),
            qty: _mapQuantity[e.id] ?? 1,
          ),
        )
        .toList();
    print('list: $list');
    widget.onModifierSelected(
      list,
      _minQuantity == 0 ? true : (_groupQuantity >= _minQuantity),
      true,
    );
    print('_groupQuantity : $_groupQuantity');
    print('_selectedModifier : $_selectedModifier');
  }

  @override
  void initState() {
    super.initState();
    _selectedModifier = widget.selectedModifier;
    print('widget.selectedModifier: ${widget.selectedModifier}');
    print('widget.mapQuantity: ${widget.mapQuantity}');
    _minQuantity = widget.modifierGroup.minQuantity;
    _maxQuantity = widget.modifierGroup.maxQuantity;
    _allowMultiple = widget.modifierGroup.allowMultiple;
    _allowQuantity = widget.modifierGroup.allowQuantity;
    final map = widget.selectedModifier.asMap().map((key, value) =>
        MapEntry(value.id, (widget.mapQuantity[value.id] ?? 1)));
    _mapQuantity = Map<String, int>.from(map);
    print('_mapQuantity : $_mapQuantity');
    if (_mapQuantity.values.isNotEmpty) {
      _groupQuantity = _mapQuantity.values.reduce((a, b) => a + b);
      print('init _groupQty : $_groupQuantity');
    } else {
      _groupQuantity = 0;
    }
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
        if (_minQuantity > 0)
          Text(
            '*min ${modifierGroup.minQuantity} item',
            style: AppFont.textBlack12Regular.copyWith(
              color: AppColors.red,
            ),
          ),
        if (_maxQuantity > 0)
          Text(
            '*max ${modifierGroup.maxQuantity} item',
            style: AppFont.textBlack12Regular.copyWith(
              color: AppColors.red,
            ),
          ),
        ...modifierGroup.modifiers.map((modifier) {
          if (_allowMultiple == 1 && _allowQuantity != 0) {
            return ModifierItemRadioWidget(
              modifier: modifier,
              toggleable: _minQuantity <= 0,
              onModifierSelected: (selectModifier) {
                print('_groupQuantity : $_groupQuantity');
                if (selectModifier != null) {
                  setState(() {
                    _selectedModifier.clear();
                    _selectedModifier.add(selectModifier);
                  });
                  widget.onModifierSelected(
                    [
                      CreateCartSessionItemModifierParam(
                        modifierGroupId: modifierGroup.id,
                        modifierId: int.parse(selectModifier.id),
                        qty: 1,
                      ),
                    ],
                    _minQuantity == 0 ? true : (_groupQuantity >= _minQuantity),
                    false,
                  );
                }
              },
              selectedModifier: _selectedModifier.firstWhereOrNull(
                (selected) => selected.id == modifier.id,
              ),
            );
          }
          return ModifierItemCheckboxWidget(
            modifier: modifier,
            isSelected:
                _selectedModifier.any((selected) => selected.id == modifier.id),
            onChanged: (value) {
              print('value : ${value!}');
              setState(() {
                final maxQty = _maxQuantity == 0 ? 999 : _maxQuantity;
                final allowQty = _allowQuantity == 0 ? 999 : _allowQuantity;
                if (value &&
                    (_allowMultiple == 0
                        ? true
                        : (_selectedModifier.length < maxQty &&
                            _groupQuantity < allowQty))) {
                  print('kondisi 1');
                  _groupQuantity++;
                  _mapQuantity.addAll({modifier.id: 1});
                  _selectedModifier.add(modifier);
                } else {
                  print('kondisi 2');
                  if (_selectedModifier
                      .any((element) => element.id == modifier.id)) {
                    _groupQuantity -= _mapQuantity[modifier.id] ?? 1;
                  }
                  _mapQuantity.removeWhere((key, value) => key == modifier.id);
                  _selectedModifier
                      .removeWhere((selected) => selected.id == modifier.id);
                }
              });
              updateList();
            },
            itemQty: _mapQuantity[modifier.id] ?? 1,
            onPlus: () {
              final qty = _mapQuantity[modifier.id] ?? 1;
              final maxQty = _maxQuantity == 0 ? 999 : _maxQuantity;
              if (qty <= maxQty && _groupQuantity < maxQty) {
                setState(() {
                  _groupQuantity++;
                  _mapQuantity[modifier.id] = qty + 1;
                });
              }
              updateList();
            },
            onMinus: () {
              final qty = _mapQuantity[modifier.id] ?? 1;
              if (qty > 1) {
                setState(() {
                  _groupQuantity--;
                  _mapQuantity[modifier.id] = qty - 1;
                });
              }
              updateList();
            },
          );
        }),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

class ModifierItemRadioWidget extends StatelessWidget {
  final bool toggleable;
  final OutletListProductDataSubModifierGroupResponse modifier;
  final OutletListProductDataSubModifierGroupResponse? selectedModifier;
  final void Function(OutletListProductDataSubModifierGroupResponse?)?
      onModifierSelected;

  const ModifierItemRadioWidget({
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

class ModifierItemCheckboxWidget extends StatelessWidget {
  final OutletListProductDataSubModifierGroupResponse modifier;
  final void Function(bool?)? onChanged;
  final bool isSelected;
  final int itemQty;
  final void Function() onMinus;
  final void Function() onPlus;
  const ModifierItemCheckboxWidget({
    Key? key,
    required this.onChanged,
    required this.isSelected,
    required this.modifier,
    required this.itemQty,
    required this.onMinus,
    required this.onPlus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      onChanged: onChanged,
      controlAffinity: ListTileControlAffinity.leading,
      value: isSelected,
      dense: true,
      contentPadding: EdgeInsets.zero,
      secondary: isSelected
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: onMinus,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: AppColors.greyStroke,
                    child: new Icon(Icons.remove,
                        color: AppColors.redYoung, size: 20.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Text(itemQty.toString(),
                      style: AppFont.textBlack16Bold,
                      textAlign: TextAlign.left),
                ),
                GestureDetector(
                  onTap: onPlus,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: AppColors.greyStroke,
                    child: new Icon(Icons.add,
                        color: AppColors.redYoung, size: 20.0),
                  ),
                )
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
            ),
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
