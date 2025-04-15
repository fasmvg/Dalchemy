Gem::Specification.new do |spec|
  spec.name          = "Dalchemy"
  spec.version       = "0.1.0"
  spec.summary       = "Create GUIs with Ruby the easy way"
  spec.description   = "Dalchemy is a Ruby library for creating fast, elegant and functional graphical interfaces using GTK3."
  spec.authors       = ["mvghasty"]
  spec.email         = ["fasmagoric.dev@gmail.com"]

  spec.files         = Dir["lib/**/*.rb"]
  spec.require_paths = ["lib"]
  spec.homepage      = "https://github.com/mvghasty/Dalchemy"

  spec.metadata = {
    "source_code_uri" => "https://github.com/mvghasty/Dalchemy",
    "homepage_uri"    => "https://github.com/mvghasty/Dalchemy",
    "bug_tracker_uri" => "https://github.com/mvghasty/Dalchemy/issues"
  }

  spec.license       = "MIT"

  spec.add_runtime_dependency "gtk3"
end
