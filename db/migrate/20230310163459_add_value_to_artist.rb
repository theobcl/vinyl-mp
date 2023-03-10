class AddValueToArtist < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :style, :string
    add_column :artists, :description, :string
  end
end
