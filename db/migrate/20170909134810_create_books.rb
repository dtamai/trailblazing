class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.references :author, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
