require 'rails/generators'

module InvestmentAdvisors
  class SiteGenerator < Rails::Generators::Base

    def install_migrations
      silence_warnings { run "bundle exec rake railties:install:migrations" }
    end

  end
end
