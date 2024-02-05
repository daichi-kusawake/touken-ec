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
#100.times do|n|
#    user.create(
#        family_name:"検#{n+1}",
#        last_name:"証#{n+1}",
#        family_name_furigana:"ケン#{n+1}",
#        last_name_furigana:"ショウ#{n+1}",
#        email_address:"test#{n+1}@test.com",
#        password:"test"
#        )
#end

# #鑑定書の種類
# AppraisalDocument.create(
#     appraisal_document_name:"保存刀剣"
# )
# AppraisalDocument.create(
#     appraisal_document_name:"特別保存刀剣"
# )
# AppraisalDocument.create(
#     appraisal_document_name:"重要刀剣"
# )
# AppraisalDocument.create(
#     appraisal_document_name:"特別重要刀剣"
# )

# #品物カテゴリ
# ArticleCategory.create(
#     article_category_name:"刀"
# )
# ArticleCategory.create(
#     article_category_name:"脇差"
# )
# ArticleCategory.create(
#     article_category_name:"短刀"
# )
# ArticleCategory.create(
#     article_category_name:"槍"
# )
# ArticleCategory.create(
#     article_category_name:"薙刀"
# )
# ArticleCategory.create(
#     article_category_name:"鍔"
# )
# ArticleCategory.create(
#     article_category_name:"目貫"
# )
# ArticleCategory.create(
#     article_category_name:"小柄"
# )
# ArticleCategory.create(
#     article_category_name:"笄"
# )
# ArticleCategory.create(
#     article_category_name:"縁頭"
# )
# ArticleCategory.create(
#     article_category_name:"揃金具"
# )

# ArticleCategory.create(
#     article_category_name:"甲冑"
# )
# ArticleCategory.create(
#     article_category_name:"鎧"
# )
# ArticleCategory.create(
#     article_category_name:"兜"
# )
# ArticleCategory.create(
#     article_category_name:"古式銃"
# )

# #国
# Country.create(
#     country_name:"肥後国"
# )
# Country.create(
#     country_name:"肥前国"
# )
# Country.create(
#     country_name:"越後国"
# )

# Country.create(
#     country_name:"摂津国"
# )
# Country.create(
#     country_name:"武蔵国"
# )
# Country.create(
#     country_name:"常陸国"
# )
# Country.create(
#     country_name:"薩摩国"
# )

# Country.create(
#     country_name:"豊後国高田"
# )


# #時代
# Era.create(
#     era:"飛鳥時代",
#     era_name:"大化",
#     ad:640
# )

# Era.create(
#     era:"飛鳥時代",
#     era_name:"白雉",
#     ad:650
# )
# Era.create(
#     era:"奈良時代",
#     era_name:"天平",
#     ad:730
# )
# Era.create(
#     era:"平安時代",
#     era_name:"大同",
#     ad:810
# )
# Era.create(
#     era:"鎌倉時代",
#     era_name:"天福",
#     ad:1233
# )
# Era.create(
#     era:"室町時代",
#     era_name:"文安",
#     ad:1444
# )
# Era.create(
#     era:"江戸時代",
#     era_name:"寛永",
#     ad:1624
# )

# Sign.create(
#     sign_person:"来国光"
# )

# Sign.create(
#     sign_person:"国行"
# )
