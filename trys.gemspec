# -*- encoding: utf-8 -*-
require File.expand_path('../lib/trys/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kengo Suzuki"]
  gem.email         = ["bakt.ken.240325@gmail.com"]
  gem.description   = %q{try(:foo).try(:bar) to trys(:foo, :bar)}
  gem.summary       = %q{try(:foo).try(:bar) to trys(:foo, :bar) not tries}
  gem.homepage      = "https://github.com/kengos/trys"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "trys"
  gem.require_paths = ["lib"]
  gem.version       = Trys::VERSION
end
