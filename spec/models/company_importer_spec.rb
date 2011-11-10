require 'spec_helper'

describe CompanyImporter do
  let(:importer) { CompanyImporter.new(File.dirname(__FILE__) + '/../fixtures/investment_companies.csv') }

  it 'should read in the csv contents' do
    importer.companies_to_load.size.should eql(10)
  end
end