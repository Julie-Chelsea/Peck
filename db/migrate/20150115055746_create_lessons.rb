class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :language
      t.integer :vocabcount

      t.timestamps
    end
  end
end
