class ArticleCategory < ApplicationRecord
  has_one :product, dependent: :destroy
end
