require 'spec_helper'

describe Advisor do
  describe 'validates presence of required fields' do
    let(:advisor) { Advisor.new }
    
    it 'requires first_name' do
      advisor.should_not be_valid
      advisor.should have(1).error_on(:first_name)
    end
    
    it 'requires last_name' do
      advisor.should_not be_valid
      advisor.should have(1).error_on(:last_name)
    end
    
    it 'should have a company' do
      advisor.should_not be_valid
      advisor.should have(1).error_on(:investment_company)
    end
  end
end