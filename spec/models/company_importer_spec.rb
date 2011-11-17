require 'spec_helper'

describe CompanyImporter do
  let(:importer) { CompanyImporter.new(File.dirname(__FILE__) + '/../fixtures/investment_companies.csv') }

  it 'should have rows to import' do
    importer.companies_to_load.size.should eql(10)
  end
  
  it 'should create the investment companies' do
    InvestmentCompany.count.should eql(10)
  end
end