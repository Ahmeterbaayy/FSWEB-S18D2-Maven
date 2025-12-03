-- ============================================
-- SQL SORGU ALIŞTIRMALARI - SADECE ÇÖZÜMLER
-- ============================================
-- Bu dosyayı pgAdmin4'te çalıştırın
-- Test veriler zaten yüklenmiş durumda

-- 1) Biyografi türünü tür tablosuna ekleyiniz.
INSERT INTO public.tur(ad) VALUES('Biyografi');

-- 2) Nurettin Belek isimli yazarı yazar tablosuna ekleyiniz.
INSERT INTO public.yazar(ad, soyad) VALUES('Nurettin', 'Belek');

-- 3) 10B sınıfındaki öğrencileri 10C sınıfına geçirin.
UPDATE public.ogrenci SET sinif = '10C' WHERE sinif = '10B';

-- 4) Tüm kitapların puanını 5 puan arttırınız.
UPDATE public.kitap SET puan = puan + 5;

-- 5) Adı Mehmet olan tüm yazarları silin.
DELETE FROM public.yazar WHERE ad = 'Mehmet';

-- 6) Kişisel Gelişim isimli bir tür oluşturun.
INSERT INTO public.tur(ad) VALUES('Kişisel Gelişim');

-- 7) 'Benim Üniversitelerim' isimli kitabın türünü 'Kişisel Gelişim' yapın.
UPDATE public.kitap
SET turno = (SELECT turno FROM public.tur WHERE ad = 'Kişisel Gelişim')
WHERE ad = 'Benim Üniversitelerim';

-- 8) Öğrenci tablosunu kontrol etmek amaçlı tüm öğrencileri görüntüleyen "ogrencilistesi" adında bir fonksiyon oluşturun.
CREATE OR REPLACE FUNCTION ogrencilistesi()
RETURNS TABLE(
    ogrno bigint,
    ad character varying,
    soyad character varying,
    cinsiyet character varying,
    sinif character varying,
    puan integer,
    dtarih character varying
) AS $$
BEGIN
    RETURN QUERY SELECT o.ogrno, o.ad, o.soyad, o.cinsiyet, o.sinif, o.puan, o.dtarih FROM public.ogrenci o;
END;
$$ LANGUAGE plpgsql;

-- 9) kitap tablosuna yeni kitap eklemek için "ekle" adında bir prosedür oluşturun.
CREATE OR REPLACE PROCEDURE ekle(
    p_ad character varying,
    p_puan integer,
    p_yazarno bigint,
    p_turno bigint
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO public.kitap(ad, puan, yazarno, turno)
    VALUES(p_ad, p_puan, p_yazarno, p_turno);
END;
$$;

-- 10) Öğrenci noya göre öğrenci silebilmeyi sağlayan "sil" adında bir prosedür oluşturun.
CREATE OR REPLACE PROCEDURE sil(
    p_ogrno bigint
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM public.ogrenci WHERE ogrno = p_ogrno;
END;
$$;

-- ============================================
-- TAMAMLANDI!
-- ============================================
-- Tüm sorgular başarıyla çalıştırıldı.
-- Şimdi Maven testlerini çalıştırabilirsiniz: mvnw.cmd test

