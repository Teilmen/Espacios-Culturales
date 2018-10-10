class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :correo_electronico
      t.string :password_digest
      t.string :username
      t.date :fecha_nacimiento
      t.integer :puntaje

      t.timestamps
    end
    add_index :users, :correo_electronico, unique: true
    add_index :users, :username, unique: true
  end
end
