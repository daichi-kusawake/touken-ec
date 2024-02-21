class Customer < ApplicationRecord
    #パスワードのハッシュ化
    #仮想的な属性:password,password_confirmationが使用可能
    #ハッシュ化したパスワードをpassword_digestに保存可能
    #authencicateメソッドの使用可
    has_secure_password

    #バリデーション空の場合に作成しないようにする
    validates :family_name, presence: true
    validates :last_name, presence: true
    validates :family_name_furigana, presence: true
    validates :last_name_furigana, presence: true
    validates :email_address, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence:true

    # 渡された文字列のハッシュ値を返す
    def Customer.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end

end
