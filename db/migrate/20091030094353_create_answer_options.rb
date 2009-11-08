class CreateAnswerOptions < ActiveRecord::Migration
  def self.up
    create_table :answer_options do |t|
      t.integer :question_id
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :answer_options
  end
end
