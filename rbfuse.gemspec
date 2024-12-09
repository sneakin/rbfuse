# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rbfuse/version'

Gem::Specification.new do |spec|
  spec.name          = "rbfuse"
  spec.version       = RBFuse::VERSION
  spec.authors       = ["jiangzhi.xie"]
  spec.email         = ["xiejiangzhi@gmail.com"]

  spec.summary       = %q{Ruby FUSE by FFI}
  spec.description   = %q{Using Ruby FFI packing FUSE library, support Linux and OS X}
  spec.homepage      = "http://github.com/xjz19901211/rbfuse"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "ffi"
end
