class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string   :first_name
      t.string   :last_name
      t.date     :date_of_birth
      t.integer  :mobile_phone
      t.integer  :home_phone
      t.text     :address
      t.text     :current_school_name
      t.string   :emergency_contact_name
      t.string   :emergency_contact_relationship
      t.integer  :emergency_contact_number

      t.timestamps
    end
  end
end
