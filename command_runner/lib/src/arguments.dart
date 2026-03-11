import 'dart:convert';

import 'package:command_runner/command_runner.dart'; //Representa um tipo de dado
enum OptionType {flag, option }

abstract class Argument {
  String get name;
  String? get help;

  Object? get defaultValue;
  String? get valueHelp;

  String get usage;
}

class Option extends Argument{
  Option(
    this.name, {
      required this.type,
      this.help,
      this.abbr,
      this.defaultValue,
      this.valueHelp,
    }
  );
  @override
  final String name;
  final OptionType type;
  @override
  final String? help;
  final String?abbr;
  @override
  final Object? defaultValue;
  final String? valueHelp;
  String get usage{
    if (abbr != null){
      return '-$abbr,--$name: $help';
    }
    return '--$name: $help'
    ;
    }
  }
abstract class Command extends Argument{
  @override
  String get name;
  String get description;
  bool get requiresArgument => false;
  late CommandRunner runner;
  @override
  String? Help;
  @override
  String? defaultValue;
  @override
  String? valueHelp;
}


