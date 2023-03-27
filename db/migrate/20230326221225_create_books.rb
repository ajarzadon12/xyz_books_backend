class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn_13
      t.string :list_price
      t.string :publication_year
      t.string :edition

      t.timestamps
    end
  end
end
