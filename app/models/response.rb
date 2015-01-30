class Response < ActiveRecord::Base
  belongs_to :option
  belongs_to :user
  validates :user_id, uniqueness: { scope: :option }
  validates :option_id, numericality: { only_integer: true}
  validates :user_id, numericality: {only_integer: true}
end
