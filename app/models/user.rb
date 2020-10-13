class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 4, maximum: 16 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 4, maximum: 16 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
