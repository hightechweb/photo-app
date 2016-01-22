class AddTagColumnToImages < ActiveRecord::Migration
  def change
    add_column :images, :tag, :string
  end
end
