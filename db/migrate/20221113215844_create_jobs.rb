class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :position, null: false
      t.string :description, null: false
      t.decimal :salary

      t.timestamps
    end
  end
end
