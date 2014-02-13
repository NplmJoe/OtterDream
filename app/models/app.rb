class App < ActiveRecord::Base
  validates :name, :description, :dev_lead, :env_support_lead, presence: true
  validates :name, uniqueness: true
end
