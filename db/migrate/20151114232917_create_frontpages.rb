class CreateFrontpages < ActiveRecord::Migration
  def change
    create_table :frontpages do |t|
    	t.string :title
    	t.text :description

      t.timestamps
    end
  end
end
