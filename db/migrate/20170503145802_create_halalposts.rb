class CreateHalalposts < ActiveRecord::Migration[5.0]
  def change
    create_table :halalposts do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :category

      t.timestamps
    end
  end
end
