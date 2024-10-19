class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :grade
      t.string :firstname_kana
      t.string :lastname_kana

      t.timestamps
    end
  end
end
