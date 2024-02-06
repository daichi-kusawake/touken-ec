class User < ApplicationRecord
    #パスワードのハッシュ化
    #仮想的な属性:password,password_confirmationが使用可能
    #ハッシュ化したパスワードをpassword_digestに保存可能
    #authencicateメソッドの使用可
    has_secure_password

    validates :family_name, presence: true
    validates :last_name, presence: true
    validates :family_name_furigana, presence: true
    validates :last_name_furigana, presence: true
    validates :email_address, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence:true, allow_nil:true #has_secure_passwordでバリデーションをしているため、ここではnilを許容する

    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end

end
