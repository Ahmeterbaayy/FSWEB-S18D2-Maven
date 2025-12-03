# SQL Sorgu Alıştırmaları

Bu hafta SQL sorguları üzerine çalışıyorsunuz. Bugünkü alıştırmada sizin için hazırladığımız veritabanında aşağıda istediğimiz sonuçları elde etmenize yarayan SQL sorgularını oluşturacaksınız.

# Proje Kurulumu
Projeyi forklayın ve clonlayın. Tamamladığınızda da pushlayın.

## Kütüphane Bilgi Sistemi

Bu veritabanı, bir okulun kütüphanesinden öğrencilerin aldıkları kitapların bilgisini barındırmaktadır.
* src -> main -> resources altında `test.sql` adında bir doya bulacaksınız.
* `test.sql` dosyasını projeye başlamadan önce kendi veritabanınızda MUTLAKA ÇALIŞTIRMALISINIZ.
* `application.properties` dosyasında `spring.datasource.username` karşısına veritabanını bağlanmak için kullandığınız kullanıcı ismini MUTLAKA GİRİNİZ.
* `application.properties` dosyasında `spring.datasource.password` karşısına veritabanını bağlanmak için kullandığınız şifreyi MUTLAKA GİRİNİZ.


#Tablolar
`ogrenci` tablosu öğrencilerin listesini tutar.
`islem` tablosu öğrencilerin kütüphaneden aldıkları kitapların bilgilerini tutar
`kitap` tablosu kütüphanedeki kitapların bilgisini tutar
`yazar` tablosu kitapların yazarları bilgisini tutar
`tur` tablosu kitapların türlerini tutar.

Tablo ilişiklerini görmek için [ktphn.png] dosyasına göz atın.

Yazdığınız sorguları buradan test edebilirsiniz: [https://ergineer.com/assets/materials/fkg36so5-kutuphanebilgisistemi-sql/] (update, delete, drop sorguları iptal edilmiştir).

### Görevler
* Öncelikle aşağıdaki sorguların tümünü yazdıktan sonra veritabanınızda çalıştırınız. Projenin içerisine yazdığınız sorguları eklemenize gerek yoktur.
* Uygulamadaki testler yazdığınız sorguların tümünün veritabanında çalıştırıldığını varsayarak test edeceklerdir. Bu yüzden aşağıdaki 10 sorgu için yazdığınız queryleri mutlaka veritabanında çalıştırdıktan sonra test kısmına geliniz.

      1) Biyografi türünü tür tablosuna ekleyiniz.
	
      2) Nurettin Belek isimli yazarı yazar tablosuna ekleyiniz.
	
      3) 10B sınıfındaki öğrencileri 10C sınıfına geçirin.
	
      4) Tüm kitapların puanını 5 puan arttırınız.
	
      5) Adı Mehmet olan tüm yazarları silin.
	
      6) Kişisel Gelişim isimli bir tür oluşturun.
	
      7) 'Benim Üniversitelerim' isimli kitabın türünü 'Kişisel Gelişim' yapın.
	
      8) Öğrenci tablosunu kontrol etmek amaçlı tüm öğrencileri görüntüleyen "ogrencilistesi" adında bir fonksiyon oluşturun.

      9) kitap tablosuna yeni kitap eklemek için "ekle" adında bir prosedür oluşturun.
	
      10) Öğrenci noya göre öğrenci silebilmeyi sağlayan "sil" adında bir prosedür oluşturun.


