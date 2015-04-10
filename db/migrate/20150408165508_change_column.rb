class ChangeColumn < ActiveRecord::Migration
  def change
    # change_column :videos, :category_id, :integer
    change_column :videos, :category_id, 'integer USING CAST("category_id" AS integer)'
  end
end
