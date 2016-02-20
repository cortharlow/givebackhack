class CreateOpening < ActiveRecord::Migration
  def change
    create_table :openings do |t|
      t.string :title
      t.string :industry
      t.string :description

      t.timestamps
    end
  end
end
