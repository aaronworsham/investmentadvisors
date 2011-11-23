desc 'Import Companies CSV'
task :load_csv => :environment do
  importer = CompanyImporter.new(File.join(File.dirname(__FILE__), '..', '..', 'data', 'all_investment_companies.csv'))
end