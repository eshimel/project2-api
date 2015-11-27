class CreateQuickPosts < ActiveRecord::Migration
  def change
    create_table :quick_posts do |t|
      t.integer :One_To_Ten
      t.references :user

      t.timestamps null: false
end
end
end
