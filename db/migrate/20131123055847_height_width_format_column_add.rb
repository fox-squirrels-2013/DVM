class HeightWidthFormatColumnAdd < ActiveRecord::Migration
  def change
    add_column :memes, :height, :string
    add_column :memes, :width, :string
    add_column :memes, :format, :string
  end
end
