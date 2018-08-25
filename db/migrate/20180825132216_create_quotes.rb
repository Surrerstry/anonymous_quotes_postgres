class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.text :quote
      t.date :date_published

      t.timestamps
    end
  end
end
