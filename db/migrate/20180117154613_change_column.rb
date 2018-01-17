class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :prince_in_cents, :price_in_cents
  end
end
