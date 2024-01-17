class ProductOrder < ApplicationRecord
  #外部キーの設定
  belongs_to :product
  belongs_to :order

  #enumでの場合分け　0:未発送　1:発送済み
  enum order_status:{undelivered:0,delivered:1}
end
