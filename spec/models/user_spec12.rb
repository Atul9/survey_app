require 'rails_helper'
describe User do
  before(:all) do
    @u = User.create()
    Role.create(name: "admin")
    Role.create(name: "user")

  it 'has a role'do
    p User.count
    expect(@u.role.id).to eq 2
  end
  it 'has a response'
  it 'answers a question'
  it 'it answers'
  it 'logs in'
  it 'selects a survey'
  it 'gets a set of questions'
  it 'selects a question to answer'
  it 'selects an option'
  it 'submits a response'
  it 'has a name'
  it 'Fills personal information'
  it 'views the survey result'
  it 'must fill the name, email id, password and role id'
  it 'must answer all questions'
  it "must have gender either 'M' or 'F'"
end
