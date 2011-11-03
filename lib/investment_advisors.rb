require "investment_advisors/version"

module InvestmentAdvisors
  require "investment_advisors"
  require "rails"
  # require "authr/engine" if defined?(Rails)

  class Engine < Rails::Engine
     engine_name :investment_advisors
  end
end