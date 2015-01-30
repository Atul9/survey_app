class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :options
  validates :survey_id, numericality: { only_integer: true}, presence: true
  after_save :count_question
  after_destroy :count_question
  after_update :count_question
  def count_question
    qcount = self.survey.questions.count
    self.survey.update_attribute(:questions_count, qcount)
  end
  accepts_nested_attributes_for :options
end
