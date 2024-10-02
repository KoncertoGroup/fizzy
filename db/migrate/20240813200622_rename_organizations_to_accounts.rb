class RenameOrganizationsToAccounts < ActiveRecord::Migration[8.0]
  def change
    rename_table :organizations, :accounts
    rename_column :users, :organization_id, :account_id
  end
end
