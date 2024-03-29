class InvestmentCompany < ActiveRecord::Base
  validates_presence_of :business_name, :legal_name, :card_number, :sec_number,
                        :address_1, :city, :state_abbr, :zip_code, :phone,
                        :registration_status, :registration_effective_date
                        
  scope :by_name, lambda { |search_name| 
    where("business_name LIKE '%#{search_name}%' OR legal_name LIKE '%#{search_name}%'") 
  }
  
  def address
  end
end