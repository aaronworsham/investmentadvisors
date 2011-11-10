class CreateInvestmentCompanies < ActiveRecord::Migration
  def up
    create_table :investment_companies do |t|
      t.string  :business_name
      t.string  :legal_name
      t.string  :card_number
      t.string  :sec_number
      t.string  :address_1
      t.string  :address_2
      t.string  :city
      t.string  :state_abbr
      t.string  :zip_code
      t.string  :phone
      t.string  :fax
      t.string  :email
      t.string  :website
      t.string  :registration_status
      t.date    :registration_effective_date
      
      t.timestamps
    end
  end

  def down
    drop_table :investment_companies
  end
end
