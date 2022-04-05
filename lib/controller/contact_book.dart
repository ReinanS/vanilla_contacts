import 'package:flutter/widgets.dart';
import 'package:vanilla_contacts/model/contact.dart';

class ContactBook extends ValueNotifier<List<Contact>> {
  // SINGLETON
  ContactBook._sharedInstance() : super([]);
  static final ContactBook _shared = ContactBook._sharedInstance();
  factory ContactBook() => _shared;

  int get lenght => value.length;

  void add({required Contact contact}) {
    final contacts = value;
    contacts.add(contact);
    notifyListeners();
  }

  void remove({required Contact contact}) {
    final contacts = value;

    if (contacts.contains(contact)) {
      contacts.remove(contact);
      notifyListeners();
    }

    contacts.remove(contact);
    notifyListeners();
  }

  Contact? contact({required int atIndex}) =>
      atIndex > value.length ? null : value[atIndex];
}
