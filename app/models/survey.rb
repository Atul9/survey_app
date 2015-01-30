class Survey < ActiveRecord::Base
  TYPES = ['Employee', 'Event']
  has_many :questions
  validates :name, presence: true#, uniqueness: true
=begin
  before_save :change_name, if: :name.downcase
  before_save :name_nil, if: :name.empty?
  def change_name
    self.name = name.capitalize
  end

  def name_nil
    puts 'name should not be nil'
  end
=end
end
