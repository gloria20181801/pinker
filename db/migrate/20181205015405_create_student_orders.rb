class CreateStudentOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :student_orders do |t|
      t.integer :student_id
      t.integer :order_id
      t.float :bond
      t.boolean :is_creator

      t.timestamps
    end
  end
end
