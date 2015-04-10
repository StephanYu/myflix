class ChangeColumnType < ActiveRecord::Migration
  def change
    change_column :videos, :category_name, :string
  end
end
