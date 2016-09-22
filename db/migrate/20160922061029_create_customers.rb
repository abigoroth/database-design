class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birthday
      t.string :address
      t.string :city
      t.string :state
      t.integer :post_code
      t.integer :home_phone
      t.integer :work_phone
      t.integer :mobile
      t.integer :fax
      t.string :email

      t.timestamps
    end
  end
end
