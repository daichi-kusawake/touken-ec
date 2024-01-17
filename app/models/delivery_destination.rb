class DeliveryDestination < ApplicationRecord
  #外部キーの設定
  belongs_to :custumer
end
