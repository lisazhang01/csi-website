class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :email
      t.text    :address
      t.integer :mobile_phone
      t.integer :home_phone

      t.timestamps
    end
  end
end
