class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
      t.integer :count ,default: 0

      t.timestamps
    end
  end
end
