$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sms_check/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sms_check"
  s.version     = SmsCheck::VERSION
  s.authors     = ["Keith Raymond"]
  s.email       = ["raymondke99@gmail.com"]
  s.homepage    = "sparkmasterflex.com"
  s.summary     = "Add double verification via SMS text messages containing a randomized pin sent via email."
  s.description = "Coming Soon"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.9"
  s.add_dependency "haml", "~> 4.0.5"
  s.add_dependency "attr_encrypted", "~> 1.3.2"
end
