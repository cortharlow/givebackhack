class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :industry
      t.string :email
      t.string :phone
      t.string :website
    end
  end
end
