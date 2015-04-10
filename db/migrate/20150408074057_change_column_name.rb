class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :videos, :category_id, :category_name
  end
end
