class Order < ApplicationRecord
  #外部キーの設定
  belongs_to :user

  #enumで場合分け 0:キャンセル 1:支払い済み 2:未払い
  enum order_status:{cancel:0,paid:1,unpaid:2}
end
