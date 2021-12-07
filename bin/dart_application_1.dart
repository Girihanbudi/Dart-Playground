// https://pub.dev/packages/encrypt
import 'dart:typed_data';
import 'package:encrypt/encrypt.dart';
import 'encryption.dart';

void main() {
  // SEPERATED ================================
  // final plainText = 'test';

  // final key = Key.fromUtf8("BPRKScredit236!#");
  // final iv = IV.fromLength(8);
  // final encrypter = Encrypter(AES(key, mode: AESMode.ecb));

  // final encrypted = encrypter.encrypt(plainText, iv: iv);
  // final decrypted = encrypter.decrypt(encrypted, iv: iv);

  // print(decrypted); 
  // print(encrypted.base64); 
  
  // USING OBJECT CLASS =======================

  var cipher = AesEcbCipher("BPRKScredit236!#");
  final encrypted = cipher.encrypt("right there");
  final decrypted = cipher.decrypt("MA1yrYrMeSwkhC56eIQ0xA==");

  print("encrypt");
  print(encrypted);
  print("decrypt");
  print(decrypted);
}