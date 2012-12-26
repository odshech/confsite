class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :text
      t.string :url

      t.timestamps
    end
  end
end
