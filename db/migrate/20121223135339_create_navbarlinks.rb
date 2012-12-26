class CreateNavbarlinks < ActiveRecord::Migration
  def change
    create_table :navbarlinks do |t|
      t.string :url
      t.string :name
      t.integer :position

      t.timestamps
    end
  end
end
