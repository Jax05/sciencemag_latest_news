# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sciencemag_latest_news/version'

Gem::Specification.new do |spec|
  spec.name          = "sciencemag_latest_news"
  spec.version       = SciencemagLatestNews::VERSION
  spec.authors       = ["'Carley Tripp'"]

  spec.summary       = %q{Read all the latest news from the Science Magazine website via CLI.}
  spec.homepage      = "https://github.com/Jax05/sciencemag_latest_news"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables = "sciencemag_latest_news"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "0.11.1"
  spec.add_dependency "nokogiri", "1.8.1"
end
