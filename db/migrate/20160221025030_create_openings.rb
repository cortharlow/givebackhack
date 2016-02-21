class CreateOpenings < ActiveRecord::Migration
  def change
    create_table :openings do |t|
      t.integer :company_id
      t.string :title
      t.string :industry
      t.string :description

      t.timestamps
    end
  end
end
