class Product < ApplicationRecord
  #外部キーの設定
  belongs_to :article_category
  belongs_to :appraisal_document
  belongs_to :country
  belongs_to :era
  belongs_to :sign
  belongs_to :japanese_sword

  #enum設定 1:刀 2:刀装具 3:甲冑
  enum article_id:{japanese_sword:1,tosogu:2,kattyu:3}

  #enum設定 0の場合：売り切れ,1の場合販売中
  enum sales_status:{sold_out:0,on_sale:1}
end
