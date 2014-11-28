class Category < ActiveRecord::Base
validates :category_title, uniqueness: true
  has_many :posts
end