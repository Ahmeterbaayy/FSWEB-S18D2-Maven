-- SQL Sorgu Alıştırmaları - Çözümler
-- Bu dosya veritabanını sıfırlar ve tüm test verilerini yükler

-- Önce mevcut tabloları temizle
DROP TABLE IF EXISTS public.islem CASCADE;
DROP TABLE IF EXISTS public.kitap CASCADE;
DROP TABLE IF EXISTS public.ogrenci CASCADE;
DROP TABLE IF EXISTS public.yazar CASCADE;
DROP TABLE IF EXISTS public.tur CASCADE;

-- Tabloları oluştur
CREATE TABLE IF NOT EXISTS public.ogrenci
(
    ogrno bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    ad character varying(45) COLLATE pg_catalog."default" NOT NULL,
    soyad character varying(45) COLLATE pg_catalog."default" NOT NULL,
    cinsiyet character varying(1) COLLATE pg_catalog."default" NOT NULL,
    sinif character varying(3) COLLATE pg_catalog."default",
    puan integer,
    dtarih character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT ogrenci_pkey PRIMARY KEY (ogrno)
);

CREATE TABLE public.islem
(
    islemno bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 ),
    ogrno bigint NOT NULL,
    kitapno bigint NOT NULL,
    atarih character varying(20) NOT NULL,
    vtarih character varying(20),
    PRIMARY KEY (islemno)
);

CREATE TABLE public.kitap
(
    kitapno bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 ),
    ad character varying(45) NOT NULL,
    puan integer NOT NULL,
    yazarno bigint NOT NULL,
    turno bigint NOT NULL,
    PRIMARY KEY (kitapno)
);

CREATE TABLE public.yazar
(
    yazarno bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 ),
    ad character varying(45) NOT NULL,
    soyad character varying(45) NOT NULL,
    PRIMARY KEY (yazarno)
);

CREATE TABLE public.tur
(
    turno bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 ),
    ad character varying(45) NOT NULL,
    PRIMARY KEY (turno)
);

-- Test verilerini ekle
INSERT INTO public.ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Hülya', 'Yiğit', 'K', '10A', 0, '1990-04-08 00:00:00');
INSERT INTO public.ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Niyazi', 'Sevinç', 'E', '9B', 0,'1990-11-11 00:00:00');
INSERT INTO public.ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('İsmail', 'Sevinç', 'E', '10B', 0,'1990-04-17 00:00:00');
INSERT INTO public.ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Kenan', 'Emin', 'E', '9A', 0,'1988-02-23 00:00:00');
INSERT INTO public.ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Sema', 'Bakır', 'K', '9B', 0,'1990-04-07 00:00:00');
INSERT INTO public.ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Deniz', 'Kara', 'E', '9C', 0,'1989-07-21 00:00:00');
INSERT INTO public.ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Betül', 'Coşkun', 'K', '11A', 0,'1990-01-10 00:00:00');
INSERT INTO public.ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Sema', 'Rüzgar', 'K', '9C', 0,'1989-11-14 00:00:00');
INSERT INTO public.ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Fadime', 'Dönmez', 'K', '9A', 0,'1989-09-11 00:00:00');
INSERT INTO public.ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Rıza', 'Koç', 'E', '10B', 0,'1990-01-26 00:00:00');

INSERT INTO public.tur(ad) VALUES('Dram');
INSERT INTO public.tur(ad) VALUES('Komedi');
INSERT INTO public.tur(ad) VALUES('Roman');
INSERT INTO public.tur(ad) VALUES('Hikaye');
INSERT INTO public.tur(ad) VALUES('Araştırma');

INSERT INTO yazar(ad, soyad) VALUES('Leyla', 'Çelik');
INSERT INTO yazar(ad, soyad) VALUES('Zeynep', 'Emin');
INSERT INTO yazar(ad, soyad) VALUES('Ali', 'Yazar');
INSERT INTO yazar(ad, soyad) VALUES('Deniz', 'Akpınar');
INSERT INTO yazar(ad, soyad) VALUES('Mehmet', 'Çelik');

INSERT INTO kitap(ad, puan, yazarno, turno) VALUES('Abdülhamidin Kurtlarla Dansı', 22, 1, 1);
INSERT INTO kitap(ad, puan, yazarno, turno) VALUES('Ablamı Nereye Kaçırdılar', 27, 1, 2);
INSERT INTO kitap(ad, puan, yazarno, turno) VALUES('Anayurttan Anadoluya', 19, 2, 3);
INSERT INTO kitap(ad, puan, yazarno, turno) VALUES('Anneannem Gelin Oldu', 15, 2, 4);
INSERT INTO kitap(ad, puan, yazarno, turno) VALUES('Antik Acılar', 28, 3, 3);
INSERT INTO kitap(ad, puan, yazarno, turno) VALUES('Aşk Ve Öbür Cinler', 18, 3, 4);
INSERT INTO kitap(ad, puan, yazarno, turno) VALUES('Aşksız İnsanlar', 18, 4, 5);
INSERT INTO kitap(ad, puan, yazarno, turno) VALUES('Atuan Mezarları', 16, 4, 2);
INSERT INTO kitap(ad, puan, yazarno, turno) VALUES('Bahar İsyancıdır', 25, 5, 3);
INSERT INTO kitap(ad, puan, yazarno, turno) VALUES('Benim Üniversitelerim', 15, 5, 2);
INSERT INTO kitap(ad, puan, yazarno, turno) VALUES('Bir Gemide', 16, 1, 3);
INSERT INTO kitap(ad, puan, yazarno, turno) VALUES('Bir Ses Böler Geceyi', 14, 3, 2);

INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(1, 1, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(1, 2, '2006-01-02 00:00:00', '2006-01-07 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(2, 3, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(4, 5, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(1, 3, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(4, 4, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(6, 5, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(7, 6, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(8, 7, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(9, 8, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(1, 10, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(1, 11, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(1, 12, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(10, 1, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(10, 4, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(8, 5, '2006-01-01 00:00:00', '2006-01-17 00:00:00');
INSERT INTO islem(ogrno, kitapno, atarih, vtarih) VALUES(10, 10, '2006-01-01 00:00:00', '2006-01-17 00:00:00');

-- ============================================
-- ÇÖZÜMLER - Test verileri yüklendikten sonra
-- ============================================

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

