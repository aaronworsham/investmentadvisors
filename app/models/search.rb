class Search
  attr_accessor :name
  
  def initialize(args)
    @name = args[:name]
  end
  
  def results
    InvestmentCompany.by_name(@name)
  end
end