class Product < ApplicationRecord
  #外部キーの設定
  belongs_to :article_category
  belongs_to :appraisal_document
  belongs_to :country
  belongs_to :era
  belongs_to :sign
  belongs_to :japanese_sword

  #enum設定 1の場合：販売中,2の場合売り切れ
  enum sales_status:{on_sale:1,sold_out:0}
end
