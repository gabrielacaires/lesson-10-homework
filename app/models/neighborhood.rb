class Neighborhood < ActiveRecord::Base
  has_many :restaurants

  validates :name, presence: true, uniqueness: {case_sensitive: false}
end
