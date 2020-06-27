Kurum deposu
============

![Lint](https://github.com/omu/omu/workflows/lint/badge.svg)

Bu meta depoyu tüm projelerde ortak olarak kullanılabilecek bilgi, kural ve dosyaların (betik, grafik, yapılandırma vb)
kayıtlanması için kullanıyoruz.  Bu depodaki alt dizinleri değerlendirirken kurumdan bağımsız olarak kurgulanan
[omu/debian](https://github.com/omu/debian) deposunu da dikkate alın.  Genel ilke:

- Kuruma özgü olmayan genel nitelikte içerik omu/debian deposunda

- Kuruma özgü her şey bu depoda

- Sistem yönetimiyle ilgili içerik omu/root deposunda

**Dokümanları bu depoya koymuyoruz**, dokümanlar Notion'da ve kısmen G-Suite paylaşılan ekip klasöründe tutuluyor.

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

#### `lib/misc`

Sınıflanamayan dosyalar.

### `etc`

Geliştiriciler tarafından kullanılabilecek ortak yapılandırmalar; her uygulama bir alt dizinde düzeniyle (ör.
`/etc/tmux`)

Katkı sağlama
-------------

Lütfen [katkı sağlama kılavuzunu](.github/CONTRIBUTING.md) okuyun.
