class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.references :account, null: false
      t.references :creator, null: false
      t.string :name, null: false

      t.timestamps
    end

    Account.first.projects.create! name: "Writebook", account: , creator: User.first
  end
end
