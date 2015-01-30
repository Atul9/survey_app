require 'rails_helper'

RSpec.describe Option, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before(:all) do
    Question.create(description: 'How was the code retreat?', survey_id: 1)
    Option.create(description: 'Good', question_id: 1)
    Option.create(description: 'Bad', question_id: 1)
    @o = Option.first
  end

  it 'has a question_id' do
    expect(@o.question_id).to eq 1
  end

  it 'has a description' do
    expect(@o.description).not_to eq ""
  end
end
