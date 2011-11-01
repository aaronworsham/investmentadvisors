class CreateInvestmentCompanies < ActiveRecord::Migration
  def up
    create_table :investment_companies do |t|
      t.string  :name,   :null => false
      t.string  :city
      t.string  :state
      t.string  :phone
      t.string  :email
      t.string  :website
      
      t.timestamps
    end
  end

  def down
    drop_table :investment_companies
  end
end
