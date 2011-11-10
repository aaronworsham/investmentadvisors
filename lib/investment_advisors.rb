require "investment_advisors/version"

module InvestmentAdvisors
  require "investment_advisors"
  require "rails"
  require "pry" if Rails.env.development?

  class Engine < Rails::Engine
     engine_name :investment_advisors
  end
end