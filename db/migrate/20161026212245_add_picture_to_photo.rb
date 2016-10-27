class AddPictureToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :picture, :string
    add_column :photos, :caption, :text

  end
end
