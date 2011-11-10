require 'csv'

class CompanyImporter
  attr_accessor :filename, :companies_to_load
  
  HEADER_ROW_FIELD_0 = "CRD#"
  
  def initialize(path_to_file)
    @filename = path_to_file
    @companies_to_load = []
    import_csv
  end
  
  private
  
    def import_csv
      CSV.foreach(@filename) do |row|
        create_company_from_csv_row(row)
      end
    end
    
    def create_company_from_csv_row(row)
      companies_to_load << CompanyImporterRow.new(row) unless data_row?(row)
    end
    
    def data_row?(row)
      row[0] == HEADER_ROW_FIELD_0 || row[0].blank?
    end
end