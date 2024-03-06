class User < ApplicationRecord
  # パスワードのハッシュ化
  # 仮想的な属性:password,password_confirmationが使用可能
  # ハッシュ化したパスワードをpassword_digestに保存可能
  # authencicateメソッドの使用可
  has_secure_password

  # REVIEW: 従属関係の設定を追加,例外処理が発生されれるか挙動確認をしていない
  has_many :orders, dependent: :restrict_with_exception

  validates :family_name, presence: true
  validates :last_name, presence: true
  validates :family_name_furigana, presence: true
  validates :last_name_furigana, presence: true
  validates :email_address, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, allow_nil: true # has_secure_passwordでバリデーションをしているため、ここではnilを許容する
  validates :postal_code, presence: true
  validates :address, presence: true

  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost:)
  end
end
