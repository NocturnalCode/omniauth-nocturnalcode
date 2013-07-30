# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-nocturnalcode/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-nocturnalcode"
  s.version     = OmniAuth::NocturnalCode::VERSION
  s.authors     = ["Daniel Brooker"]
  s.email       = ["dan@nocturnalcode.com"]
  s.homepage    = "http://www.nocturnalcode.com"
  s.license     = "MIT"
  s.summary     = "Omniauth strategy for NocturnalCode.com"
  s.description = "Omniauth strategy for NocturnalCode.com"
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency 'omniauth', '~> 1.0'
  s.add_dependency 'omniauth-oauth2', '~> 1.1'
end
