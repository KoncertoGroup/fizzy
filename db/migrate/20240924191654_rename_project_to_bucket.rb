class RenameProjectToBucket < ActiveRecord::Migration[8.0]
  def change
    rename_table :projects, :buckets

    rename_column :accesses, :project_id, :bucket_id
    rename_column :bubbles, :project_id, :bucket_id
  end
end
