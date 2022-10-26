import 'dart:io';

void main() {
  double sayi1, sayi2;
  String islem;
  String secim;

  print("İşlem için gereken ilk sayıyı giriniz: ");
  sayi1 = double.parse(stdin.readLineSync()!);
  print("İşlem için gereken ikinci sayıyı giriniz: ");
  sayi2 = double.parse(stdin.readLineSync()!);
  print("""
Toplama (+)
Çıkarma (-)
Çarpma (*)
Bölme (/)
Yukarıda belirtilen işlemlerden yapmak istediğiniz işlemin işaretini giriniz: 
""");
  islem = stdin.readLineSync()!;

  switch (islem) {
    case '+':
      print("İşlem sonucunuz: ${sayi1 + sayi2}");
      break;
    case '-':
      print("İşlem sonucunuz: ${sayi1 - sayi2}");
      break;
    case '*':
      print("İşlem sonucunuz: ${sayi1 * sayi2}");
      break;
    case '/':
      print("İşlem sonucunuz: ${sayi1 / sayi2}");
      break;
    default:
      print("Yapmak istediğiniz işlem geçersizdir!");
      return main();
  }

  print("Eğer başka bir işlem yapmak istiyorsanız e tuşuna basınız:");
  secim = stdin.readLineSync()!;
  if(secim == 'e'){
    return main();
  }

  print("Hesap makinesi kapatılıyor...");
  exit(1);
}
