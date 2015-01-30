require 'rails_helper'

RSpec.describe User, :type => :model do
  before(:all) do
    @u = FactoryGirl.build(:user)
    @role = FactoryGirl.build(:role)
    #Role.create(name: "admin")
    #Role.create(name: "user")
=begin
    User.create(name: 'David',email: 'david@gmail.com',age: 25, gender: 'M', password: 'hello',role_id: 2)
    @u = User.first
    Survey.create(name: 'Code Retreat', survey_type: 'ruby', conducted_on: 2014-10-12, count_people: 20)
    Question.create(description: 'How was the code retreat?', survey_id: 1)
    Option.create(description: 'Good', question_id: 1)
    Option.create(description: 'Bad', question_id: 1)
    Response.create(user_id: 1, option_id: 1)
    Response.create(user_id: 1, option_id: 2)
    Response.create(user_id: 2, option_id: 1)
=end
  end
  it 'has a role'do
   #@role.save
   #@u.save
   p @role.inspect
    expect(@u.role.id).to eq 1
  end
=begin
  context 'has gender' do
    it "must have gender 'M'" do
      expect(@u.gender).to eq 'M'
    end

  end
  it 'selects an option' do
    expect(@u.options.ids[0]).to eq 1
  end
  it 'has a response' do
    expect(@u.responses.ids[0]).to eq 1
  end

  it 'selects a question to answer' do
    expect(@u.options[0].question_id).to eq 1
  end

  it 'has a name' do
    expect(@u.name).to eq "David"
  end
  context 'has age'do
    it 'is numeric' do
      expect(@u.age.class).to eq Fixnum
    end
  end
=begin
  it 'answers a question'
  it 'it answers'
  it 'logs in'
  it 'selects a survey'
  it 'gets a set of questions'
  it 'submits a response'
  it 'Fills personal information'
  it 'views the survey result'
  it 'must fill the name, email id, password and role id'
  it 'must answer all questions'
=end
end
