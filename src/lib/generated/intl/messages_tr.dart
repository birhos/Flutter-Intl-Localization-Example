// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a tr locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'tr';

  static m0(name) => "Hoşgeldiniz ${name}";

  static m1(firstName, lastName) => "Adım ${firstName} ${lastName}";

  static m2(howMany) => "${Intl.plural(howMany, one: '1 mesajınız var', other: '${howMany} mesajınız var')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "pageHomeListTitle" : MessageLookupByLibrary.simpleMessage("Bazı yerelleştirilmiş string\'ler:"),
    "pageHomeSamplePlaceholder" : m0,
    "pageHomeSamplePlaceholdersOrdered" : m1,
    "pageHomeSamplePlural" : m2
  };
}
