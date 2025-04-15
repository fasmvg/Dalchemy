Gem::Specification.new do |spec|
  spec.name          = "Dalchemy"
  spec.version       = "0.1.0"
  spec.summary       = "Crie GUIs com Ruby de forma simples"
  spec.authors       = ["mvghasty"]
  spec.files         = Dir["lib/**/*.rb"]
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency "gtk3"
end
