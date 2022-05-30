class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :aadhaar_no
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :mobile_number

      t.timestamps
    end
  end
end
