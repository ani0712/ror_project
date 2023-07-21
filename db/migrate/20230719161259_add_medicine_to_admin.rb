class AddMedicineToAdmin < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :medicine_name, :string
    add_column :admins, :medicine_price, :integer
  end
end
