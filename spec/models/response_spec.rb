require 'rails_helper'

RSpec.describe Response, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before(:all) do
    User.create(name: 'David',email: 'david@gmail.com',age: 25, gender: 'M', password: 'hello',role_id: 2)
    Survey.create(name: 'Code Retreat', survey_type: 'ruby', conducted_on: 2014-10-12, count_people: 20)
    Question.create(description: 'How was the code retreat?', survey_id: 1)
    Option.create(description: 'Good', question_id: 1)
    Option.create(description: 'Bad', question_id: 1)
    Response.create(user_id: 1, option_id: 1)
    Response.create(user_id: 1, option_id: 2)
    @r = Response.first
  end
  it 'has a question_id' do
    expect(@r.option.question.id).to eq 1
  end

  it 'has an option_id' do
    expect(@r.option_id).not_to eq ""
  end

  it 'has a user_id' do
    expect(@r.user_id).not_to eq ""
  end
end
