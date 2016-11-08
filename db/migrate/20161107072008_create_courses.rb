class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string  "title"
      t.date    "begin_date"
      t.date    "end_date"
      t.integer "capacity"
      t.text    "location"
      t.text    "description"
      t.text    "syllabus"

      t.timestamps
    end
  end
end
