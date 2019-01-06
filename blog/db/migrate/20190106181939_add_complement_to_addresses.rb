class AddComplementToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :complement, :string
  end
end
