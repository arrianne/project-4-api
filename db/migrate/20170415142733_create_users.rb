class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :medication
      t.string :gp_name
      t.text :gp_address
      t.date :diagnosis_date
      t.integer :diabetes_type
      t.string :emergency_name
      t.integer :emergency_number

      t.timestamps
    end
  end
end
