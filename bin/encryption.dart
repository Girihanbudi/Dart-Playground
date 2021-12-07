import 'package:encrypt/encrypt.dart';

class AesEcbCipher {
  late Key key;
  late Encrypter encrypter;

  AesEcbCipher(String keyCode){
    key = Key.fromUtf8(keyCode);
    encrypter = Encrypter(AES(key, mode: AESMode.ecb));
  }

  String encrypt(String plainText) {
    final iv = IV.fromLength(8);
    var encrypted = encrypter.encrypt(plainText, iv: iv);
    return encrypted.base64;
  }

  String decrypt(String plainText) {
    final iv = IV.fromLength(8);
    var encrypted = Encrypted.fromBase64(plainText);
    return encrypter.decrypt(encrypted, iv: iv);
  }
}