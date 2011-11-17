class CompanyImporterRow
  attr_accessor :row_data, :investment_company
  
  def initialize(row_data)
    @row_data = row_data
    create_investment_company
  end
  
  def valid?
    @investment_company.valid?
  end
  
  def card_number
    row_data[0]
  end
  
  def sec_number
    row_data[1]
  end

  def business_name
    row_data[2]
  end
  
  def legal_name
    row_data[3]
  end
  
  def address_1
    row_data[4]
  end
  
  def address_2
    row_data[5]
  end
  
  def city
    row_data[6]
  end

  def state_abbr
    row_data[7]
  end

  def zip_code
    row_data[8]
  end
  
  def phone
    row_data[9]
  end
  
  def fax
    row_data[10]
  end
  
  def email
    ""
  end
  
  def website
    row_data[11]
  end
    
  def registration_status
    row_data[12]
  end
  
  def registration_effective_date
    if row_data[13].present?
      split_date = row_data[13].split('/')
      Date.new(split_date[2].to_i+2000,split_date[0].to_i,split_date[1].to_i)
    end
  end

  private
  
    def create_investment_company
      @investment_company = InvestmentCompany.create(:card_number => card_number, :sec_number => sec_number,
        :business_name => business_name, :legal_name => legal_name,:address_1 => address_1, 
        :address_2 => address_2, :city => city, :state_abbr => state_abbr, :zip_code => zip_code, :phone => phone,
        :fax => fax, :email => email, :website => website,
        :registration_status => registration_status, :registration_effective_date => registration_effective_date)
    end
  
end