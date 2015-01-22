class Response < ActiveRecord::Base
  belongs_to :option
  belongs_to :user
  validates :user_id, uniqueness: { scope: :option }
end
