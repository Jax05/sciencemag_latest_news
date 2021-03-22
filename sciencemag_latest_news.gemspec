# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sciencemag_latest_news/version'

Gem::Specification.new do |spec|
  spec.name          = "sciencemag_latest_news"
  spec.version       = SciencemagLatestNews::VERSION
  spec.authors       = ["'Jax05'"]

  spec.summary       = %q{Read all the latest news from the Science Magazine website via CLI.}
  spec.homepage      = "https://github.com/Jax05/sciencemag_latest_news"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables = "sciencemag_latest_news"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 13.0"

  spec.add_runtime_dependency "nokogiri", "1.11.2"
end
