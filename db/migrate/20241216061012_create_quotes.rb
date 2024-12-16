
class CreateQuotes < ActiveRecord::Migration[8.0]
  def change
    create_table :quotes do |t|
      t.float :amount
      t.references :customer, null: false, foreign_key: true
      t.token :string, null: false
      t.timestamps
    end
  end
end
