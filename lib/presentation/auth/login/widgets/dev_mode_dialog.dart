import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DevModeDialog extends HookWidget {
  final Function(String) onRadioChange;
  final String? baseUrl;
  const DevModeDialog({
    Key? key,
    required this.onRadioChange,
    this.baseUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    var _baseUrl = useState(baseUrl);

    return Column(
      children: [
        Text(i10n.login_body_base),
        ListTile(
          title: Text(i10n.login_select_dev(Endpoints.baseUrlDigiresto)),
          leading: Radio<String>(
            value: Endpoints.baseUrlDigiresto,
            groupValue: _baseUrl.value,
            onChanged: (val) {
              _baseUrl.value = val;
              onRadioChange(val!);
            },
          ),
        ),
        ListTile(
          title: Text(i10n.login_select_prod(Endpoints.baseUrlDigirestoProd)),
          leading: Radio<String>(
            value: Endpoints.baseUrlDigirestoProd,
            groupValue: _baseUrl.value,
            onChanged: (val) {
              _baseUrl.value = val;
              onRadioChange(val!);
            },
          ),
        ),
        ListTile(
          title: Text(i10n.login_select_other),
          leading: Radio<String>(
            value: i10n.login_select_other,
            groupValue: _baseUrl.value,
            onChanged: (val) {
              _baseUrl.value = val;
              onRadioChange(val!);
            },
          ),
        ),
      ],
    );
  }
}
