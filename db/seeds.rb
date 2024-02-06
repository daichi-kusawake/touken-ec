# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


#顧客情報のダミーデータ
100.times do|n|
  User.create(
    family_name:"検#{n+1}",
    last_name:"証#{n+1}",
    family_name_furigana:"ケン#{n+1}",
    last_name_furigana:"ショウ#{n+1}",
    email_address:"test#{n+1}@test.com",
    password:"test",
    postal_code:"#{n}#{n}#{n+1}-#{n}#{n}#{n}#{n}",
    address:"test#{n+1}"
  )
end

ProductCategory.create(
  category_name:"日本刀"
)
ProductCategory.create(
  category_name:"脇差"
)
ProductCategory.create(
  category_name:"短刀"
)
ProductCategory.create(
  category_name:"槍"
)
ProductCategory.create(
  category_name:"薙刀"
)
ProductCategory.create(
  category_name:"鍔"
)
ProductCategory.create(
  category_name:"目貫"
)
ProductCategory.create(
  category_name:"小柄"
)
ProductCategory.create(
  category_name:"笄"
)
ProductCategory.create(
  category_name:"縁頭"
)
ProductCategory.create(
  category_name:"揃金具"
)
ProductCategory.create(
  category_name:"甲冑"
)
ProductCategory.create(
  category_name:"鎧"
)
ProductCategory.create(
  category_name:"兜"
)
ProductCategory.create(
  category_name:"古式銃"
)
