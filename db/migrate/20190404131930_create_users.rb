class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.integer :group
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :postalcode

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
