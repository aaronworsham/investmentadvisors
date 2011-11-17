require 'spec_helper'

describe CompanyImporterRow do
  describe 'load valid company data' do
    let(:company_row) { CompanyImporterRow.new(valid_row_data) }
    
    it 'should create an InvestmentCompany' do
      company_row.investment_company.should_not be_nil
      InvestmentCompany.count.should eql(1)
    end
    
    it 'should have valid data' do
      company_row.should be_valid
    end
    
    describe 'correct investment company data' do
      it 'business_name' do
        company_row.business_name.should eql("SRA CAPITAL MANAGEMENT LLC")
      end
      
      it 'legal_name' do
        company_row.legal_name.should eql("SRA CAPITAL MANAGEMENT LLC")
      end
      
      it 'card_number' do
        company_row.card_number.should eql("118786")
      end
      
      it 'sec_number' do
        company_row.sec_number.should eql("801-60965")
      end
      
      it 'address_1' do
        company_row.address_1.should eql("80 E. SIR FRANCIS DRAKE BLVD.")
      end
      
      it 'address_2' do
        company_row.address_2.should eql("SUITE 3F")
      end
      
      it 'city' do
        company_row.city.should eql("LARKSPUR")
      end
      
      it 'state_abbr' do
        company_row.state_abbr.should eql("CA")
      end
      
      it 'zip_code' do
        company_row.zip_code.should eql("94939")
      end
      
      it 'phone' do
        company_row.phone.should eql("(415) 925-0346")
      end
      
      it 'fax' do
        company_row.fax.should eql("(415) 925-0264")
      end
      
      it 'email' do
        company_row.email.should be_blank
      end
      
      it 'website' do
        company_row.website.should eql("WWW.SRACAP.COM")
      end
      
      it 'registration_status' do
        company_row.registration_status.should eql("Approved")
      end
      
      it 'registration_effective_date' do
        company_row.registration_effective_date.should eql(Date.new(2010,6,15))
      end
    end
  end
  
  private 
    def valid_row_data
      ["118786", "801-60965", "SRA CAPITAL MANAGEMENT LLC", "SRA CAPITAL MANAGEMENT LLC", "80 E. SIR FRANCIS DRAKE BLVD.", "SUITE 3F", "LARKSPUR", "CA", "94939", "(415) 925-0346", "(415) 925-0264", "WWW.SRACAP.COM", "Approved", "6/15/10"]
    end
end