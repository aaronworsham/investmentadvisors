class AdvisorSearch < ActiveRecord::Base
  def results
    InvestmentCompany.by_name(self.name)
  end
end