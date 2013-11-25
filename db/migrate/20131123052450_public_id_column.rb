class PublicIdColumn < ActiveRecord::Migration
  def change
    add_column :memes, :public_id, :string
  end
end
