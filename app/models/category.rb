class Category < ActiveRecord::Base
  has_many :restaurants_categories
  has_many :restaurants, through: :restaurants_categories

  validates :name, presence: true, uniqueness: {case_sensitive: false}
end
