require 'rails_helper'

RSpec.describe Question, :type => :model do
  before(:all) do
    Survey.create(name: 'Code Retreat', survey_type: 'ruby', conducted_on: 2014-10-12, count_people: 20)
    Question.create(description: 'How was the code retreat?', survey_id: 1)
    @q = Question.first
  end
  #pending "add some examples to (or delete) #{__FILE__}"
  it 'has a survey_id' do
    expect(@q.survey_id).to eq 1
  end

  it 'has a question' do
    expect(@q.description).not_to eq ""
  end
end
