class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :organisation
      t.string :phone_number
      t.string :role_title

      t.timestamps
    end
  end
end
