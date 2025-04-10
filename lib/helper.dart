

import 'package:http/http.dart' as http;
import 'dart:convert';

requestApi(key,body) async {
  const url = 'https://rc-mgmp.themeghalayanage.com/api/';
  final uri = Uri.parse(url+key);
  final response = await http.post(
    uri,
    headers: {
      'Content-Type': 'application/json',
      'Xen-Origin':
      'gAAAAABj4fitdXGtaMIU4-VcP36xx0ylGf8mrUbBA3IV3-x0dbAbhWRVnqWUVIF62YaMar21HM-uEtg_k0cWZ7lsJ-PCpsZTgZiyevE9v95xtUaBtTPOWbc='
    },
    body: jsonEncode(body),
  );

  return response;
}