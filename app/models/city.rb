class City < ActiveRecord::Base
  belongs_to :states
  validates :state_id, presence: true
end
