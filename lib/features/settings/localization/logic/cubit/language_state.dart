import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// Base State
abstract class LanguageState extends Equatable {
  final Locale locale;
  const LanguageState(this.locale);

  @override
  List<Object> get props => [locale];
}

// Initial State
class LanguageInitial extends LanguageState {
  const LanguageInitial(Locale locale) : super(locale);
}

// Language Changed State
class LanguageChanged extends LanguageState {
  const LanguageChanged(Locale locale) : super(locale);
}

