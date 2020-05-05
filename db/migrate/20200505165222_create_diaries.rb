class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.integer :class_id
      t.integer :student_id
      t.date :date
      t.boolean :status
      t.timestamps
      t.string :good_comment
      t.string :bad_comment
      t.string :about_comment
      t.integer :teacher_id
      t.string :teacher_comment
    end
  end
end
