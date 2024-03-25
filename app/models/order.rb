class Order < ApplicationRecord
  # 外部キーの設定
  belongs_to :user
  belongs_to :product

  # 0:クレジット決済、1:銀行振込
  enum payment_methods: { credit_card: 0, transfer: 1 }

  # 0:キャンセル 1:支払い済み 2:未払い
  enum order_status: { cancel: 0, paid: 1, unpaid: 2 }
end
