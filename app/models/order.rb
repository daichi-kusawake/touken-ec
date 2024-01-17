class Order < ApplicationRecord
  #外部キーの設定
  belongs_to :custumer

  #enumで場合分け
  enum order_status:{cancel:0,paid:1,unpaid:2}
end
