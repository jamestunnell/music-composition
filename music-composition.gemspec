# -*- encoding: utf-8 -*-

require File.expand_path('../lib/music-composition/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "music-composition"
  gem.version       = Music::Composition::VERSION
  gem.summary       = %q{Classes for generating music}
  gem.description   = <<DESCRIPTION
Control music generation using a blend of elements of tonal music composition 
and electronic music techniques.
DESCRIPTION
  gem.license       = "MIT"
  gem.authors       = ["James Tunnell"]
  gem.email         = "jamestunnell@lavabit.com"
  gem.homepage      = "https://github.com/jamestunnell/music-composition"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'hashmake'
  gem.add_dependency 'music-transcription'
  
  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'rake', '~> 0.8'
  gem.add_development_dependency 'rspec', '~> 2.4'
  gem.add_development_dependency 'yard', '~> 0.8'
  gem.add_development_dependency 'micro-optparse'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'pry-nav'
end
