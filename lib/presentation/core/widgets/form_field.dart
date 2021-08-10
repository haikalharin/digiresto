// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:intl/intl.dart';
// import 'package:digiresto/presentation/core/datetime_picker_formfield.dart';

// class ReadOnlyField extends StatelessWidget {
//   const ReadOnlyField({
//     Key? key,
//     required this.title,
//     required this.txtController,
//     this.body,
//   }) : super(key: key);
//   final String title;
//   final TextEditingController txtController;
//   final String? body;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text(
//             title,
//             key: Key('title' + title.replaceAll(' ', '')),
//             style: TextStyle(color: Colors.black),
//           ),
//           Padding(
//             padding: const const EdgeInsets.all(6.0),
//             child: Text(
//               body ?? '',
//               key: Key('field' + title.replaceAll(' ', '')),

//               // readOnly: true,
//               // controller: txtController,

//               // decoration: InputDecoration(
//               //   contentPadding: const EdgeInsets.all(6.0),
//               // ),
//             ),
//           ),
//           const Divider(
//             height: 1,
//             color: Colors.black,
//           )
//         ],
//       ),
//     );
//   }
// }

// class DateField extends StatelessWidget {
//   const DateField({
//     Key? key,
//     required this.title,
//     this.titleColor,
//     required this.txtController,
//     required this.format,
//     required this.firstDate,
//     required this.lastDate,
//     this.validator,
//     required this.onChanged,
//     this.currentDate,
//     this.disabled = false,
//   }) : super(key: key);
//   final String title;
//   final Color? titleColor;
//   final TextEditingController txtController;
//   final DateFormat format;
//   final DateTime firstDate;
//   final DateTime lastDate;
//   final DateTime? currentDate;
//   final String? validator;
//   final Function(DateTime?) onChanged;
//   final bool disabled;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           title,
//           key: Key('title' + title.replaceAll(' ', '')),
//           style: TextStyle(color: titleColor?? Colors.black),
//         ),
//         DateTimeField(
//             key: Key('field' + title.replaceAll(' ', '')),
//             // onFieldSubmitted: (value) => onChanged(value),

//             isDisabled: disabled,
//             format: format,
//             controller: txtController,
//             autovalidateMode: AutovalidateMode.always,
//             validator: (_) => validator,
//             style: TextStyle(
//                 color:
//                     disabled ? Colors.grey.shade400 : colorsStyle.colorPrimary),
//             decoration: InputDecoration(
//                 contentPadding: const EdgeInsets.all(6.0),
//                 suffixIcon: Icon(
//                   Icons.event,
//                   size: 30,
//                   color:
//                       disabled ? Colors.grey.shade400 : colorsStyle.greenButton,
//                 )),
//             onShowPicker: (BuildContext context, DateTime? currentValue) async {
//               DateTime? date = await showDatePicker(
//                 context: context,
//                 firstDate: firstDate,
//                 initialDate:
//                     currentDate == null || currentValue!.isBefore(firstDate)
//                         ? firstDate
//                         : currentDate!,
//                 lastDate: lastDate,
//                 builder: (BuildContext context, Widget? child) {
//                   return Theme(
//                     data: ThemeData.light().copyWith(
//                         primaryColor: const Color(0xFF2E7D32),
//                         accentColor: const Color(0xFF2E7D32),
//                         colorScheme:
//                             ColorScheme.light(primary: const Color(0xFF2E7D32)),
//                         buttonTheme: ButtonThemeData(
//                             textTheme: ButtonTextTheme.primary)),
//                     child: child!,
//                   );
//                 },
//               );
//               return onChanged(date);
//             })
//       ],
//     );
//   }
// }

// class NoteField extends StatelessWidget {
//   const NoteField({
//     Key? key,
//     required this.txtController,
//     this.validator,
//     this.textInputAction,
//     this.maxCharacter,
//     this.onChange,
//     this.autovalidateMode,
//   }) : super(key: key);
//   final TextEditingController txtController;
//   final String? validator;
//   final TextInputAction? textInputAction;
//   final int? maxCharacter;
//   final Function(String)? onChange;
//   final AutovalidateMode? autovalidateMode;

//   @override
//   Widget build(BuildContext context) {
//     var i10n = I10n.of(context);
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           i10n.note,
//           style: TextStyle(color: colorsStyle.colorPrimary),
//           key: Key('title' + ConnectKey.note),
//         ),
//         TextFormField(
//           key: Key('field' + ConnectKey.note),
//           controller: txtController,
//           autovalidateMode: autovalidateMode ?? AutovalidateMode.always,
//           validator: (_) => validator,
//           textInputAction: textInputAction ?? TextInputAction.done,
//           onChanged: onChange,
//           maxLines: null,
//           maxLength: maxCharacter,
//           decoration: InputDecoration(
//             counterText: '',
//             hintText: i10n.hintNote,
//             contentPadding: const EdgeInsets.all(6.0),
//           ),
//         )
//       ],
//     );
//   }
// }

// class OnTapField extends StatelessWidget {
//   const OnTapField({
//     Key? key,
//     required this.title,
//     required this.txtController,
//     this.onTap,
//     this.hintText,
//     this.helperText,
//     this.validator,
//   }) : super(key: key);
//   final String title;
//   final TextEditingController txtController;
//   final Function()? onTap;
//   final String? hintText;
//   final String? helperText;
//   final String? validator;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           title,
//           style: TextStyle(color: colorsStyle.colorPrimary),
//           key: Key('title' + title.replaceAll(' ', '')),
//         ),
//         TextFormField(
//           key: Key('field' + title.replaceAll(' ', '')),
//           readOnly: true,
//           controller: txtController,
//           autovalidateMode: AutovalidateMode.always,
//           validator: (_) => validator,
//           onTap: onTap,
//           decoration: InputDecoration(
//               contentPadding: const EdgeInsets.all(6.0),
//               hintText: hintText,
//               helperText: helperText,
//               suffixIcon: Icon(
//                 Icons.arrow_forward_ios,
//                 size: 18,
//                 color: Colors.black,
//               )),
//         )
//       ],
//     );
//   }
// }

// class CustomizedField extends StatelessWidget {
//   CustomizedField({
//     Key? key,
//     required this.title,
//     this.txtController,
//     this.onTap,
//     this.hintText,
//     this.hintStyle,
//     this.helperText,
//     this.readOnly,
//     this.nameIcon,
//     this.keyboardType,
//     this.maxLine,
//     this.validator,
//     this.onChanged,
//     this.showOptionalIndicator = false,
//     this.titleStyle,
//     this.obscureText = false,
//     this.suffixIcon,
//     this.textCapitalization = TextCapitalization.none,
//     int maxLength = 255,
//   })  : _maxLength = maxLength,
//         super(key: key);
//   final String title;
//   final TextEditingController? txtController;
//   final Function()? onTap;
//   final String? hintText;
//   final TextStyle? hintStyle;
//   final String? helperText;
//   final bool? readOnly;
//   final String? nameIcon;
//   final TextInputType? keyboardType;
//   final int? maxLine;
//   final String? validator;
//   final Function(String)? onChanged;
//   final int _maxLength;
//   final bool showOptionalIndicator;
//   final TextStyle? titleStyle;
//   final bool obscureText;
//   final Widget? suffixIcon;
//   final TextCapitalization textCapitalization;

//   @override
//   Widget build(BuildContext context) {
//     var _titleStyle = titleStyle ?? TextStyle(color: colorsStyle.colorPrimary);
//     I10n i10n = I10n.of(context);
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: _titleStyle,
//               key: Key('title' + title.replaceAll(' ', '')),
//             ),
//             if (showOptionalIndicator)
//               Text(
//                 '  ${i10n.optional}',
//                 style: _titleStyle.copyWith(
//                   color: (_titleStyle.color ?? colorsStyle.colorPrimary)
//                       .withOpacity(0.5),
//                   fontStyle: FontStyle.italic,
//                 ),
//               ),
//           ],
//         ),
//         TextFormField(
//           key: Key('field' + title.replaceAll(' ', '')),
//           onChanged: onChanged,
//           readOnly: readOnly ?? false,
//           controller: txtController,
//           keyboardType: keyboardType,
//           textCapitalization: textCapitalization,
//           maxLines: maxLine,
//           maxLength: _maxLength,
//           onTap: onTap,
//           obscureText: obscureText,
//           autovalidateMode: AutovalidateMode.always,
//           validator: (_) => validator,
//           decoration: InputDecoration(
//               counterText: '',
//               isDense: true,
//               hintText: hintText ?? '',
//               hintStyle: hintStyle ?? TextStyle(color: Colors.grey),
//               helperText: helperText ?? '',
//               suffixIcon: suffixIcon != null
//                   ? suffixIcon
//                   : nameIcon != null
//                       ? Container(
//                           child: Padding(
//                           padding: const const EdgeInsets.fromLTRB(0, 12, 0, 12),
//                           child: SvgPicture.asset(
//                             nameIcon!,
//                             color: colorsStyle.colorPrimary,
//                           ),
//                         ))
//                       : null,
//               suffixIconConstraints: BoxConstraints(
//                 maxHeight: 35,
//                 maxWidth: 35,
//               )),
//         ),
//         if (validator != null) const SizedBox(height: 20),
//       ],
//     );
//   }
// }

// class CustomizedDateField extends StatelessWidget {
//   const CustomizedDateField({
//     Key? key,
//     required this.title,
//     required this.nameIcon,
//     this.txtController,
//     required this.format,
//     this.currentDate,
//     required this.onChanged,
//   }) : super(key: key);
//   final String title;
//   final String nameIcon;
//   final TextEditingController? txtController;
//   final DateFormat format;
//   final DateTime? currentDate;
//   final Function(DateTime?, bool) onChanged;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           title,
//           style: TextStyle(color: colorsStyle.colorPrimary),
//           key: Key('title' + title.replaceAll(' ', '')),
//         ),
//         DateTimeField(
//             key: Key('field' + title.replaceAll(' ', '')),
//             format: format,
//             controller: txtController,
//             decoration: InputDecoration(
//                 contentPadding: const EdgeInsets.all(6.0),
//                 suffixIcon: Container(
//                     child: Padding(
//                   padding: const const EdgeInsets.fromLTRB(0, 12, 0, 12),
//                   child: SvgPicture.asset(
//                     nameIcon,
//                     color: colorsStyle.colorPrimary,
//                   ),
//                 ))),
//             onShowPicker: (BuildContext context, DateTime? currentValue) async {
//               DateTime? choose = await showDatePicker(
//                 context: context,
//                 firstDate: DateTime(1700),
//                 initialDate: currentDate ?? DateTime.now(),
//                 lastDate: DateTime(2500),
//                 builder: (BuildContext context, Widget? child) {
//                   return Theme(
//                     data: ThemeData.light().copyWith(
//                         primaryColor: const Color(0xFF2E7D32),
//                         accentColor: const Color(0xFF2E7D32),
//                         colorScheme:
//                             ColorScheme.light(primary: const Color(0xFF2E7D32)),
//                         buttonTheme: ButtonThemeData(
//                             textTheme: ButtonTextTheme.primary)),
//                     child: child!,
//                   );
//                 },
//               );
//               return onChanged(choose ?? currentValue, choose == null);
//             })
//       ],
//     );
//   }
// }

// class CustomizedPhoneField extends HookWidget {
//   CustomizedPhoneField({
//     String key = 'PhoneField',
//     required this.title,
//     this.onTap,
//     this.hintText,
//     this.readOnly,
//     this.validator,
//     required this.onChanged,
//     this.showOptionalIndicator = false,
//     this.titleStyle,
//     int maxLength = 255,
//   })  : _maxLength = maxLength,
//         super(key: Key(key));
//   final String title;
//   final Function()? onTap;
//   final String? hintText;
//   final bool? readOnly;
//   final String? validator;
//   final Function(String, String) onChanged;
//   final int _maxLength;
//   final bool showOptionalIndicator;
//   final TextStyle? titleStyle;

//   final GlobalKey<CountryCodePickerState> countryCodeKey =
//       GlobalKey<CountryCodePickerState>();

//   @override
//   Widget build(BuildContext context) {
//     var _titleStyle = titleStyle ?? TextStyle(color: colorsStyle.colorPrimary);
//     I10n i10n = I10n.of(context);
//     TextEditingController _phoneController =
//         useTextEditingController.fromValue(TextEditingValue.empty);
//     TextEditingController _dialCodeController =
//         useTextEditingController.fromValue(
//             TextEditingValue(text: CommonUtils.defaultCountryCallingCode));
//     return Stack(
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: _titleStyle,
//                   key: Key('title' + title.replaceAll(' ', '')),
//                 ),
//                 if (showOptionalIndicator)
//                   Text(
//                     '  ${i10n.optional}',
//                     style: _titleStyle.copyWith(
//                       color: (_titleStyle.color ?? colorsStyle.colorPrimary)
//                           .withOpacity(0.5),
//                       fontStyle: FontStyle.italic,
//                     ),
//                   ),
//               ],
//             ),
//             Row(
//               children: [
//                 Flexible(
//                   flex: 1,
//                   child: CountryCodePicker(
//                     key: countryCodeKey,
//                     onChanged: (countryCode) {
//                       _dialCodeController.value = TextEditingValue(
//                           text: countryCode.dialCode ??
//                               CommonUtils.defaultCountryCallingCode);
//                       onChanged(_phoneController.value.text,
//                           _dialCodeController.value.text);
//                     },
//                     initialSelection: CommonUtils.defaultCountryCallingCode,
//                     countryFilter: [CommonUtils.defaultCountryCallingCode],
//                     builder: (countryCode) {
//                       return AbsorbPointer(
//                         child: TextField(
//                           key: Key(ConnectKey.fieldCountryCode),
//                           readOnly: true,
//                           onTap: () {
//                             countryCodeKey.currentState
//                                 ?.showCountryCodePickerDialog();
//                           },
//                           decoration: InputDecoration(
//                             counterText: '',
//                             hintStyle:
//                                 TextStyle(fontSize: 16, color: Colors.black),
//                             hintText: _dialCodeController.text,
//                             errorText: validator,
//                             isDense: true,
//                             errorStyle: TextStyle(fontSize: 0, height: 0),
//                             suffixIcon: Icon(
//                               Icons.arrow_drop_down,
//                               size: 30,
//                               color: Colors.black,
//                             ),
//                             disabledBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black38),
//                             ),
//                             suffixIconConstraints: BoxConstraints(
//                               minWidth: 0,
//                               minHeight: 0,
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 const SizedBox(width: 15),
//                 Flexible(
//                   flex: 4,
//                   child: TextField(
//                     key: Key('field$key'),
//                     onChanged: (value) =>
//                         onChanged(value, _dialCodeController.value.text),
//                     readOnly: readOnly ?? false,
//                     controller: _phoneController,
//                     keyboardType: TextInputType.number,
//                     maxLines: 1,
//                     maxLength: _maxLength,
//                     inputFormatters: [
//                       FilteringTextInputFormatter.digitsOnly,
//                       FilteringTextInputFormatter(RegExp('^0+|\s+'),
//                           allow: false)
//                     ],
//                     onTap: onTap,
//                     decoration: InputDecoration(
//                       counterText: '',
//                       isDense: true,
//                       hintText: hintText,
//                       errorText: validator,
//                       errorStyle: TextStyle(fontSize: 0, height: 0),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             const SizedBox(height: 5),
//             if (validator != null)
//               Text(
//                 validator!,
//                 style: Theme.of(context)
//                     .textTheme
//                     .caption
//                     ?.copyWith(color: Colors.red[800]),
//               ),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class CustomizedPasswordField extends HookWidget {
//   CustomizedPasswordField({
//     Key? key,
//     required this.title,
//     this.txtController,
//     this.onTap,
//     this.hintText,
//     this.helperText,
//     this.readOnly,
//     this.maxLine,
//     this.validator,
//     this.onChanged,
//     this.titleStyle,
//   }) : super(key: key);
//   final String title;
//   final TextEditingController? txtController;
//   final Function()? onTap;
//   final String? hintText;
//   final String? helperText;
//   final bool? readOnly;
//   final int? maxLine;
//   final String? validator;
//   final Function(String)? onChanged;
//   final TextStyle? titleStyle;

//   @override
//   Widget build(BuildContext context) {
//     ValueNotifier<bool> _obscureText = useState(true);
//     return CustomizedField(
//       title: title,
//       txtController: txtController,
//       onTap: onTap,
//       hintText: hintText,
//       helperText: helperText,
//       readOnly: readOnly,
//       maxLine: 1,
//       validator: validator,
//       onChanged: onChanged,
//       maxLength: 16,
//       titleStyle: titleStyle,
//       obscureText: _obscureText.value,
//       suffixIcon: IconButton(
//         icon: Icon(
//           _obscureText.value
//               ? Icons.visibility_off_outlined
//               : Icons.visibility_outlined,
//         ),
//         visualDensity: VisualDensity.standard,
//         onPressed: () {
//           _obscureText.value = !_obscureText.value;
//         },
//       ),
//     );
//   }
// }
