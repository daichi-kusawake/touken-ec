class Customer < ApplicationRecord

    #パスワードのハッシュ化
    has_secure_password
    
    #バリデーション　空の場合に作成しないようにする
    validates :email_address, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :family_name, presence: true, length: { minimum: 3 }
    validates :last_name_name, presence: true, length: { minimum: 3 }
    validates :family_name_furigana, presence: true, length: { minimum: 3 }
    validates :last_name_furigana, presence: true, length: { minimum: 3 }
end
