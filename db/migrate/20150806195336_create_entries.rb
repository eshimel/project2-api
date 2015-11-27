#
class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.string :jpost
      t.references :user

      t.timestamps null: false
    end
  end
end
