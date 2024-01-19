class Customer < ApplicationRecord

    #パスワードのハッシュ化
    #has_secure_password
    
    #バリデーション　空の場合に作成しないようにする
    validates :family_name, presence: true
    validates :last_name, presence: true
    validates :family_name_furigana, presence: true
    validates :last_name_furigana, presence: true
    validates :email_address, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    
end
