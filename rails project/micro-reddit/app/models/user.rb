class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, length: { in: 6..20 }, uniqueness: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :password, presence: true, length: { minimum: 10 }
end
