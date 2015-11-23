class AlterFrontpagesAddUserIdColumn < ActiveRecord::Migration
  def change
  	add_column :frontpages, :user_id, :integer
  	add_index :frontpages, :user_id
  end
end
