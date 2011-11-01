class CreateInvestmentAdvisors < ActiveRecord::Migration
  def up
    create_table :advisors do |t|
      t.integer :investment_company_id
      t.string  :first_name,   :null => false
      t.string  :last_name,    :null => false
      t.string  :phone
      t.string  :fax
      t.string  :email
      t.string  :crd_num
      t.string  :sec_num
      t.string  :reg_status
      t.datetime :reg_date
      
      t.timestamps
    end
  end

  def down
    drop_table :advisors
  end
end
