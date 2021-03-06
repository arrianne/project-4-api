class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.text :location
      t.float :lat
      t.float :lng
      t.datetime :start
      t.string :title
      t.integer :duration
      t.string :specialist
      t.text :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
