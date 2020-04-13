class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.boolean :billable, default: false, null: false
      t.timestamps
    end
  end
end
