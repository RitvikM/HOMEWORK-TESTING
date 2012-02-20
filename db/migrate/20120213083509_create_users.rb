class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
	  t.string :sex
      t.string :password
      t.text :biography
	  t.string :recieveemails
	  t.string :extra field
		
		
      t.timestamps
    end
  end
end
