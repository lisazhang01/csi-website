class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|

      t.string  :first_name
      t.string  :last_name
      t.integer :employee_id
      t.integer :mobile_phone
      t.integer :home_phone
      t.text    :address
      t.text    :bio

      t.timestamps
    end
  end
end
