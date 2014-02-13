class Env < ActiveRecord::Base
  has_many :refreshes
  validates :name, :description, presence: true
  validates :name, uniqueness: true
end
