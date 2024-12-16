class CreateQuotes < ActiveRecord::Migration[8.0]
  def change
    create_table :quotes do |t|
      t.money :amount
      t.references :customer, null: false, foreign_key: true
      t.timestamps
    end
  end
end
