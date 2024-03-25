import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AppFormMasks {
  static MaskTextInputFormatter cpf() => MaskTextInputFormatter(
      mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});

  static MaskTextInputFormatter cep() => MaskTextInputFormatter(
      mask: "#####-###", filter: {"#": RegExp(r'[0-9]')});

  static MaskTextInputFormatter plate() => MaskTextInputFormatter(
      mask: "AAA-####",
      filter: {"#": RegExp(r'[A-Za-z0-9]'), 'A': RegExp(r'[A-Za-z]')});

  static MaskTextInputFormatter upperCase() =>
      MaskTextInputFormatter(filter: {"#": RegExp(r'[A-Za-z]')});

  static MaskTextInputFormatter phone() => MaskTextInputFormatter(
      mask: "(##) #####-####", filter: {"#": RegExp(r'[0-9]')});

  static MaskTextInputFormatter date() => MaskTextInputFormatter(
      mask: "##/##/####", filter: {"#": RegExp(r'[0-9]')});
}
