class CreateUserdatabases < ActiveRecord::Migration
  def change
    create_table :userdatabases do |t|
      t.string :name
      t.string :password
      t.integer :age
      t.string :hobbies

      t.timestamps
    end
  end
end
