SELECT "il", COUNT(*) AS cinayet_sayisi
FROM public."cinayetler"
GROUP BY "il"
ORDER BY cinayet_sayisi DESC;
--Cinayetlerin büyük bir kısmının ili bilinmemekte olsa da 
--kalanların çoğunun İstanbulda yaşandığı göze çarpıyor.

Select neden_olduruldu, COUNT(*) AS 
sayi
FROM public."cinayetler"
GROUP BY neden_olduruldu
ORDER BY sayi DESC;
-- aile içi anlaşmazlıkların ve kadına yönelik psikolojik şiddetin
--cinayetlere nasıl dönüştüğüne dair çarpıcı bir içgörü sağlıyor.
-- 1100 gibi yüksek bir oranda “tespit edilemeyen” neden olması da 
--raporlama eksikliği veya yetersiz araştırma sorununa dikkat çeker.

Select failin_durumu,COUNT(*) AS sayi
FROM public."cinayetler"
GROUP BY failin_durumu
ORDER BY sayi DESC;
--Her 3 cinayetten 1'inde failin kim olduğu veya nerede olduğu bilinmiyor.
--Soruşturma ve yargı süreci devam eden ya da fail firarda olan 200'den fazla dosya hâlâ açık

SELECT EXTRACT(YEAR FROM tarih) AS yil, COUNT(*) AS cinayet_sayisi
FROM cinayetler
GROUP BY yil
ORDER BY cinayet_sayisi DESC;
--2019 ve 2020 yılları, hem toplumsal farkındalığın artması hem de 
--sosyal krizlerin derinleşmesi açısından kritik dönemlerdir. 
--2019’da yaşanan Emine Bulut cinayetiyle birlikte kamuoyu bilinçlenmeye başlarken,
--2020’de pandemiyle beraber kadına yönelik şiddet daha görünmez ve öldürücü hale geldi.
--Bu yıllarda yaşanan artış, yalnızca bireysel şiddet vakaları değil, aynı zamanda sistemsel
--koruma mekanizmalarının zayıflığı ile açıklanabilir.
SELECT kim_tarafindan_olduruldu, COUNT(*) AS sayi
FROM cinayetler
GROUP BY kim_tarafindan_olduruldu
ORDER BY sayi DESC;
--Veriler, kadınların en çok kocaları, eski eşleri ve sevgilileri tarafından 
--öldürüldüğünü açıkça göstermektedir.
--Bu, kadın cinayetlerinin büyük ölçüde duygusal, kontrolcü veya ayrılık sonrası 
--şiddet eylemleri olduğunu göstermektedir. 
--Failin tanınan biri olması, şiddetin rastlantısal değil 
--sistematik bir biçimde işlediğini ve aile içi şiddetle doğrudan ilişkili 
--olduğunu ortaya koymaktadır. 
SELECT korunma_talebi, COUNT(*) AS sayi
FROM cinayetler
GROUP BY korunma_talebi;
--Burada da azımsanamayacak çoğunlukta kadının adli süreç başlatmaya çalıştığını buna 
--rağmen korunamadıklarını görebiliyoruz.

SELECT EXTRACT(MONTH FROM tarih) AS ay, COUNT(*) AS cinayet_sayisi
FROM cinayetler
GROUP BY ay
ORDER BY cinayet_sayisi DESC;
--Veriler, kadın cinayetlerinin en çok yaz ve bahar aylarında yoğunlaştığını 
--göstermektedir. 
--Özellikle Ağustos, Eylül ve Mart aylarında dikkat çekici artışlar görülmektedir.
--Bu mevsimsel yoğunluk, aile içi gerilimlerin arttığı, tatil/okul dönüşü 
--gibi kritik sosyal geçiş dönemleriyle ilişkilendirilebilir.


SELECT oldurulme_sekli, COUNT(*) AS sayi
FROM cinayetler
GROUP BY oldurulme_sekli
ORDER BY sayi DESC;
-- Ateşli silahlar, kadın cinayetlerinin en baskın yöntemi silah kontrol politikalarının ciddi şekilde sorgulanması gerektiğini gösteriyor.