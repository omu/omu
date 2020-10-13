Kurum deposu
============

![Lint](https://github.com/omu/omu/workflows/lint/badge.svg)

Bu meta depoyu tüm projelerde ortak olarak kullanılabilecek bilgi, kural ve dosyaların (betik, grafik, yapılandırma vb)
kayıtlanması için kullanıyoruz.  Bu depodaki alt dizinleri değerlendirirken kurumdan bağımsız olarak kurgulanan
[omu/debian](https://github.com/omu/debian) deposunu da dikkate alın.  Genel ilke:

- Kuruma özgü olmayan genel nitelikte içerik omu/debian deposunda

- Kuruma özgü her şey bu depoda

- Sistem yönetimiyle ilgili içerik omu/root deposunda

**Dokümanları bu depoya koymuyoruz**, dokümanlar Notion'da ve kısmen G-Suite veya Dropbox'ta paylaşılıyor.

Ne nerede
---------

### `bin`

Geliştiricilerin kullanabileceği ve sistem yönetimi türünde olmayan ortak betikler.

### `lib`

#### `lib/scripts`

Kuruma özgü (ama konağa özgü olmayan) provizyonlama betikleri, yani omu/debian deposundaki `lib/scripts`'in kurumsal
karşılığı.

#### `lib/templates`

Kuruma özgü şablonlar.

#### `lib/dict`

Sözlükler.

#### `lib/misc`

Sınıflanamayan dosyalar.

### `etc`

Geliştiriciler tarafından kullanılabilecek ortak yapılandırmalar; her uygulama bir alt dizinde düzeniyle (ör.
`/etc/tmux`)

Projeler
----------

### Planlanmış projeler

Planlanmış projeler kod adlarıyla birlikte aşağıda listelenmiştir.  Proje adları Türkçe karakter içermeyen Türkçe
kelimelerden seçilir.  İsim havuzu için [sözlüğe](lib/dict) başvurabilirsiniz.  Her iş için ayrı bir depo açmak yerine
birbiriyle ilişkili işleri konsolide eden "mono repo"lar tercih edilmelidir.

| Kod adı                 | Proje                             |
| ----------------------- | --------------------------------- |
| `aktar`                 | Otomasyon adaptörleri (mono repo) |
| `birim`                 | Birim editörü                     |
| `fil`                   | Lisans öğrenci otomasyonu         |
| `garson`                | RPC servisleri (mono repo)        |
| `hamal`                 | Arka plan görevleri (mono repo)   |
| `joker`                 | Destek kitaplıkları (mono repo)   |
| `kalem`                 | Kalite otomasyonu                 |
| `piyon`                 | Lisansüstü öğrenci otomasyonu     |
| `taban`                 | Otomasyon çekirdeği               |
| `ultrason`              | Yönetici paneli                   |
| `vezir`                 | Personel otomasyonu               |

### Proje onayları

| Onay     | Açıklama                   | Rozet                                                                                 |
| -------- | -------------------------- | ------------------------------------------------------------------------------------- |
| Seed     | Fikir aşamasında yazılım   | [![Seed](https://omu.sh/assets/badge/seed.svg)](https://omu.sh "BAUM Seed")           |
| Beta     | Beta yazılım               | [![Beta](https://omu.sh/assets/badge/beta.svg)](https://omu.sh "BAUM Beta")           |
| Legacy   | Eski yazılım               | [![Legacy](https://omu.sh/assets/badge/legacy.svg)](https://omu.sh "BAUM Legacy")     |
| Work     | Onaylı yazılım             | [![Work](https://omu.sh/assets/badge/work.svg)](https://omu.sh "BAUM Work")           |
| Product  | Tam onaylı yazılım         | [![Product](https://omu.sh/assets/badge/product.svg)](https://omu.sh "BAUM Product")  |

Bir yazılım projesinin onay alması için ("Work") aşağıdaki asgari koşulları sağlaması gerekir:

1. Sunulan kurum alt yapısı üzerinde konuşlandırılmış olmalı
2. CI ile entegre edilmiş temel "entegrasyon" testlerinden geçiyor (test yoksa eklenmeli, birim testler atlanabilir)
3. CI ile entegre edilmiş lint denetimlerinden geçiyor (legacy yazılımlarda lintleme kural/dosya seçerek yapılmalı)
4. Geliştirme süreci korunmuş dallarda PR'larla gerçekleşiyor (review koşul değil fakat CI testleri yeşillenmeli)
5. Dış servis erişimlerini kendi olanaklarıyla değil sunulan kurum alt yapısıyla gerçekleştiriyor
6. Arka plan görevlerinde sunulan kurum alt yapısını kullanıyor

Yazılım projesinin tam onay alması için ("Product") yukarıdaki koşullara ilave olarak şu koşulları sağlaması gerekiyor:

1. Kurumsal temayı kullanıyor
2. İlgili dil/framework için bildirilen kurallara uyuyor
3. PR'lar en az bir geliştiricinin onayından geçiyor
4. Kurumsal SSO arkasında çalışıyor
5. Diğer uygulamalarla RPC üzerinden haberleşiyor
6. Çok kiracılı mimariyi destekliyor
7. Çok dilliliği destekliyor
8. Birim test code coverage değeri en az %80 olmalı

Yol haritası
------------

Yol haritası sırayla numaralandırılmış ve isimlendirilmiş duraklardan oluşur.  Durak isimleri için sırasıyla [Türkiye
şehir adları](lib/dict/şehir) ve [dünya şehir adları](lib/dict/metropol) kullanılır.  Duraklar kendi içinde bütünlük
taşıyan bir veya birden fazla alt durak içerir.  Her alt durak için ilgili depolar listelenir ve durak geçmiş zaman
kipinde pozitif dille yazılmış bir cümleyle ifade edilir.  Bu ifade basit bir iş listesiyle detaylandırılabilir.

Bir durakta herhangi bir alt durak tamamlanmışsa, duruma göre diğerlerini beklemeden bir sonraki durağın ilişkili alt
durağıyla devam edilebilir.  Ör. `Adana` durağında `omu/root` ile ilişkili alt durak tamamlanmışsa, `Adıyaman` durağında
`omu/root` ile ilişkili alt durağa geçilebilir.

### 01 Adana

#### Fizibilite çalışmaları tamamlandı

`omu/root`

- [ ] Kafka
- [ ] Faktory
- [ ] RPC

#### Kurum içi bilgilendirme yapıldı

`omu/omu`

- [ ] Kafka
- [ ] Faktory
- [ ] RPC

#### Kimliklendirme refaktörlendi

`omu/taban`, `omu/hamal`

- [ ] Kimliklendirme refaktör
- [ ] LDAP consumer

#### Yönetici paneli rektörlük için açıldı

`omu/ultrason`

- [ ] Proje açıldı
- [ ] Uygulama konuşlandı
- [ ] Rektör için (başlangıç düzeyinde) bir pano görüntülendi

### 02 Adıyaman

#### Personel servisi açıldı

`omu/vezir`, `omu/taban`

- [ ] Mevcut personel verisi temiz şekilde aktarılmış
- [ ] Telefon doğrulama ve parola sıfırlama yapılabiliyor
- [ ] Personel profilini görüntüleyebiliyor

#### RPC servisleri açıldı

`omu/garson`

- [ ] SMS

#### Yönetici paneli rektörlük temel özellikleri tamamlandı

`omu/ultrason`

- [ ] TODO

#### Sistem kurulumları yapıldı

`omu/root`

- [ ] Kafka production
- [ ] Faktory production

### 03 Afyon

#### Kimlik ve Personel Modülleri Ayrıldı

`omu/taban`, `omu/vezir`

- [ ] İki servis birbiriyle konuşabiliyor

#### RPC Servislerine Geçiş Tamamlandı

`omu/garson`

- [ ] YÖKSİS
- [ ] DETSİS
- [ ] KPS
- [ ] ÖSYM
- [ ] MEKSİS

#### Yönetici paneli entegre edildi

`omu/ultrason`

- [ ] Kimlik ile entegre
- [ ] SSO arkasında
- [ ] Personelle haberleşiyor

#### Sistem bileşenleri izleniyor

`omu/root`

- [ ] Kafka
- [ ] Faktory
- [ ] LDAP

### 04 Ağrı

#### Personel servisinde temel özellikler tamamlandı

`omu/vezir`

- [ ] Aday ("prospective") personel süreciyle yeni personel kaydı açılabiliyor
- [ ] Personel izinleri uygulama üzerinden alınabiliyor
- [ ] Personel görevlendirmeleri uygulama üzerinden yönetilebiliyor

#### Yönetici paneli tüm birimler için tamamlandı

`omu/ultrason`

#### Sistem ölçekleme olanakları için fizibilite tamamlandı

`omu/root`

- [ ] Nomad

Kızıl elma
-----------

Henüz yol haritasında duraklandırılmamış hedefler bu bölümde listelenmiştir.  Özet olarak tek maddede yazılan bu
hedefler duraklandırıldığında birden fazla alt hedefe bölünecektir.

### Geliştirme

- [ ] omu/ais: legacy →  work
- [ ] omu/yatay-gecis: legacy →  work
- [ ] omu/ozelyetenek: legacy →  work
- [ ] omu/mbs: legacy →  work
- [ ] omu/tbs: legacy →  work
- [ ] omu/kalite: product
- [ ] UNIPA aktarım modülü hazır
- [ ] Lisans üstü modülü hazır
- [ ] Öğrenci otomasyonu hazır
- [ ] EYP entegrasyonu hazır

### Sistem

- [ ] Ölçeklenmiş alt yapı (Nomad) kuruldu
- [ ] Yapılandırmalarda Terraform kullanılıyor
- [ ] Teyp yedeklemeleri aktif
- [ ] FaaS fizibilite çalışmaları tamamlandı
- [ ] FaaS kurulumu tamamlandı

Katkı sağlama
-------------

Lütfen [katkı sağlama kılavuzunu](.github/CONTRIBUTING.md) okuyun.
