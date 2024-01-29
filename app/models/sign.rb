class Sign < ApplicationRecord
    has_one :product,dependent: :destroy
end
