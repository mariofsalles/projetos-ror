class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.integer :number
      t.string :cep
      t.string :uf
      t.string :city

      t.timestamps
    end
  end
end
