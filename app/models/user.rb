class User < ApplicationRecord
  # パスワードを暗号化して保存
  def password=(new_password)
    self.pass = BCrypt::Password.create(new_password)
  end
end