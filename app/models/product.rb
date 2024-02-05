class Product < ApplicationRecord
  #外部キーの設定[nilの許可]
  belongs_to :product_category, optional: true

  #enum設定 1:刀 2:刀装具 3:甲冑
  enum article:{japanese_sword:1,tosogu:2,kattyu:3}

  #enum設定 0の場合：売り切れ,1の場合販売中
  enum sales_status:{sold_out:0,on_sale:1}

  enum appraisal_document:{A:4,B:5,C:6}

  enum country:{D:7,E:8,F:9}

  enum era:{X:10,Y:11,Z:12}

  enum era_name:{G:13,H:14,I:15}

  enum sign:{S:16,D:17,G:18}

  #バリデーション設定
  validates :product_name,presence: true
  validates :tax_excluded_price,numericality: {only_integer: true}
  validates :description,presence: true
  validates :product_category,presence: true
  validates :article,presence: true
  validates :appraisal_document,presence: true
  validates :country,presence: true
  validates :era,presence: true
  validates :era_name,presence: true
  validates :sign,presence: true
  validates :sales_status,presence: true

end
