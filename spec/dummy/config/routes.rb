Rails.application.routes.draw do
  mount InvestmentAdvisors::Engine => "/investment_advisors", :as => "investment_advisors_engine"
end
