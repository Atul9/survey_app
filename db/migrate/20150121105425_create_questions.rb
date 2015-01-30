class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :description
      t.references :survey, index: true
      t.timestamps null: false
    end
    add_foreign_key :quesitons, :surveys
  end
end
