class RemovePictureUrlFromList < ActiveRecord::Migration[7.0]
  def change
    remove_column :lists, :picture_url, :string
  end
end
