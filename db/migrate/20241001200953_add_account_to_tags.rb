class AddAccountToTags < ActiveRecord::Migration[8.0]
  def change
    change_table :tags do |t|
      t.references :account, null: true
    end

    execute "update tags set account_id = (select id from accounts limit 1)"

    change_column_null :tags, :account_id, false
  end
end
