class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
