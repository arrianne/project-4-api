class CreateJoinTableAppointmentsCategories < ActiveRecord::Migration[5.0]
  def change
    create_join_table :appointments, :categories do |t|
      # t.index [:appointment_id, :category_id]
      # t.index [:category_id, :appointment_id]
    end
  end
end
