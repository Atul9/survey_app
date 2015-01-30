class AddQuestionCountToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :questions_count, :integer
  end
end
