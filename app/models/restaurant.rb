class Restaurant < ActiveRecord::Base
  belongs_to :neighborhood

  has_many :restaurants_categories
  has_many :categories, through: :restaurants_categories

  validates :name, presence: :true, uniqueness: :true
  validates :postal_code, presence: :true
end
