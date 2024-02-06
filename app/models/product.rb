class Product < ApplicationRecord
  #外部キーの設定[nilの許可]
  belongs_to :product_category, optional: true

  #enum設定 1:刀 2:刀装具 3:甲冑
  enum article: {japanese_sword: 0,tosogu: 1,kattyu: 2}

  #enum設定 0の場合：売り切れ,1の場合販売中
  enum sales_status:{sold_out: 0,on_sale: 1}

  enum appraisal_document:{A: 0,B: 1,C: 2}

  enum country:{D: 0,E: 1,F: 2}

  enum era:{X: 10,Y: 11,Z: 12}

  enum era_name:{G: 13,H: 14,I: 15}

  enum sign:{J: 16,K: 17,L: 18}

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
