class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.boolean :technology, default: false
      t.boolean :medical, default: false
      t.boolean :construction, default: false
      t.boolean :create, default: false
      t.boolean :culinary, default: false
      t.boolean :industrial, default: false
      t.boolean :mechanical, default: false
      
    end
  end
end
