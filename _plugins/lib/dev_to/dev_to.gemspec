Gem::Specification.new do |spec|
  spec.name          = "dev_to"
  spec.version       = "0.0.1"
  spec.authors       = ["Joseph Parkton"]
  spec.email         = ["jekyllcoder@gmail.com"]
  spec.summary       = "A Jekyll plugin for fetching and displaying dev.to articles."
  spec.description   = "A Jekyll plugin that retrieves and displays articles from a dev.to account."
  spec.homepage      = "https://github.com/leatheresque/dev_to"
  spec.license       = "MIT"

  spec.files         = Dir.glob("{_plugins,lib}/**/*") + ["dev_to.gemspec"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll"
  spec.add_runtime_dependency "httparty"
end
