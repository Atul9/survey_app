class Option < ActiveRecord::Base
  belongs_to :question
  has_many :responses
  has_many :users, through: :responses
  validates :description, length: { in: 2..50}, uniqueness: true, on: :create
  validates :question_id, numericality: { only_integer: true}
end
