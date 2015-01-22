class User < ActiveRecord::Base
  belongs_to :role
  has_many :responses
  has_many :options, through: :responses
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: true
  validates :gender, inclusion: { in: %w(M F), message: "%{value} is not valid gender"}
  validates :age, length: { is: 2 }
end
