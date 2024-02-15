# Ruby on ralisでECサイトの作成
# 開発環境
- Ruby 3.2.2
- Rails 7.1.2
- MacOS sonoma 14.3
- WindowsOS 11(22H2)
    - Ubuntu 22.04.3LTS

# 導入手順
## windows
## Mac
rbenvのインストール
```
$ brew install rbenv ruby-build
```
バージョン確認
```
$ rbenv -v
```
zshrcファイルでrbenvの初期化
```
$ echo 'export RBENV_ROOT="$HOME/.rbenv"' >> ~/.zshrc
$ echo 'export PATH="$RBENV_ROOT/bin:$PATH"' >> ~/.zshrc
$ echo 'eval "$(rbenv init -)"' >>  ~/.zshrc
$ source ~/.zshrc
```

Railsのインストール
```
$ gem install rails
```
Visual Studio Codeのインストール

https://code.visualstudio.com/download

## ER図
```mermaid
erDiagram
users ||--o{orders:""


products ||--o{orders:""
products ||--||japanese_swords:""
products ||--||tosogu:""
products ||--||kattyu:""

product_categories ||--o{products:""

administrators{
    integer id PK
    string email_address
    string password
}
users{
    integer id PK
    string family_name 
    string last_name
    string family_name_furigana
    string last_name_furigana
    string email_address
    string password
    string postal_code
    string address
    boolean account_status
}

orders{
    integer id PK
    references user_id FK
    references product_id FK
    string payment_methods
    integer billing_amount
    integer shipping_fee
    enum order_status
}

products{
    integer id PK
    references article FK
    references product_category_id FK
    string product_name
    intger tax_excluded_price
    string description
    integer sales_status
    enum appraisal_document
    enum country
    enum era
    enum era_name
    enum sign
}

product_categories{
    integer id PK
    string category_name
}

japanese_swords{
    integer id PK
    float blade_length
    float curvature
    float width_at_the_hamachi
    float thickness_at_the_moto_kasane
    float wide_at_the_kissaki
    float thickness_at_the_saki_kasane
    float weight
    string nakago
    string guns_sword_registration_area
    integer guns_sword_registration_number
}

tosogu{
    integer id PK
    string shape
    boolean in_paulownia_wood_box
    float length
    float width
    float thickness
    folat weight
}

kattyu{
    integer id PK
    string odoshiito
    string hachi
    boolean kabutodai
}
```

▼draw.io
![ec drawio](https://github.com/daichi-kusawake/touken-ec/assets/77773862/c91e6401-e82c-4d24-b99e-229250e96dfd)




## ブランチ変更

* ブランチの新規作成とそのブランチへの切り替え
git checkout -b <ブランチ名>

* ブランチの作成
git branch <branch名>

* ブランチの切り替え
git checkout <branch名>

* gitのステータス
git status

* gitのログ
git log
