class AppraisalDocument < ApplicationRecord
    has_one :product,dependent: :destroy
end
