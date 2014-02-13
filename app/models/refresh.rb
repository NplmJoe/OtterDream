class Refresh < ActiveRecord::Base
  belongs_to :env
  validates :refresh_date, :refresh_type, :env_id, presence: true
  validates :env_id, uniqueness: { scope: :refresh_date,
    message: "should only be refreshed once per day"}
end
