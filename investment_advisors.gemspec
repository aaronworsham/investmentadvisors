# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "investment_advisors/version"

Gem::Specification.new do |s|
  s.name        = "investment_advisors"
  s.version     = InvestmentAdvisors::VERSION
  s.authors     = ["Aaron Worsham"]
  s.email       = ["aaronworsham@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "investmentadvisors"

  # s.files         = `git ls-files`.split("\n")
  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rails"
  s.add_dependency "haml"
  s.add_dependency "coffee-script"
  
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "thin"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "ruby-debug19"
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "rb-fsevent"
  s.add_development_dependency "yard"
  s.add_development_dependency "pry"
end
