class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { minimum: 6 }
  validates :body, presence: true, length: { minimum: 20 }
end
