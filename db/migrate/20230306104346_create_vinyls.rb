class CreateVinyls < ActiveRecord::Migration[7.0]
  def change
    create_table :vinyls do |t|
      t.string :name
      t.references :artist, null: false, foreign_key: true
      t.date :release_date

      t.timestamps
    end
  end
end
