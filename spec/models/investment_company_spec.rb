require 'spec_helper'

describe InvestmentCompany do
  describe 'validates presence of required fields' do
    let(:company) { InvestmentCompany.new }
    
    it 'requires business_name' do
      company.should_not be_valid
      company.should have(1).error_on(:business_name)
    end
    
    it 'requires legal_name' do
      company.should_not be_valid
      company.should have(1).error_on(:legal_name)
    end
    
    it 'requires card_number' do
      company.should_not be_valid
      company.should have(1).error_on(:card_number)
    end
    
    it 'requires sec_number' do
      company.should_not be_valid
      company.should have(1).error_on(:sec_number)
    end
    
    it 'requires address_1' do
      company.should_not be_valid
      company.should have(1).error_on(:address_1)
    end
    
    it 'requires city' do
      company.should_not be_valid
      company.should have(1).error_on(:city)
    end
    
    it 'requires state_abbr' do
      company.should_not be_valid
      company.should have(1).error_on(:state_abbr)
    end
    
    it 'requires zip_code' do
      company.should_not be_valid
      company.should have(1).error_on(:zip_code)
    end
    
    it 'requires phone' do
      company.should_not be_valid
      company.should have(1).error_on(:phone)
    end
    
    it 'requires registration_status' do
      company.should_not be_valid
      company.should have(1).error_on(:registration_status)
    end
    
    it 'requires registration_effective_date' do
      company.should_not be_valid
      company.should have(1).error_on(:registration_effective_date)
    end
  end
end