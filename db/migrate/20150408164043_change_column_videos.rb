class ChangeColumnVideos < ActiveRecord::Migration
  def change
    rename_column :videos, :category_name, :category_id
  end
end
