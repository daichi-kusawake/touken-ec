# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

100.times do|n|
    Customer.create(
        family_name:"検#{n+1}",
        last_name:"証#{n+1}",
        family_name_furigana:"ケン#{n+1}",
        last_name_furigana:"ショウ#{n+1}",
        email_address:"test#{n+1}@test.com",
        password:"test"
        )
end