# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'college_admin/version'

Gem::Specification.new do |spec|
  spec.name          = 'college_admin'
  spec.version       = CollegeAdmin::VERSION
  spec.authors       = ['Hasan Mohammad Tanbir']
  spec.email         = ['tanbir2025@gmail.com']

  spec.summary       = %q{ Rails admin theme engine.}
  spec.description   = %q{ This admin theme engine is made for using admin panel in backend. It is a administrator basic layout, but you will
create a huge materials design as like form,button etc. using this theme.}
  spec.homepage      = 'https://github.com/BDMADE/college_admin'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "Set to 'http://rubygems.org/'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rails", "~> 4.2.x"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
