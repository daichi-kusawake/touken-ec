class Country < ApplicationRecord
    has_one :product,dependent: :destroy
end
