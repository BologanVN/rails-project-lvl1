require_relative 'lib/hexlet_code/version'

Gem::Specification.new do |spec|
  spec.name          = "hexlet_code"
  spec.version       = HexletCode::VERSION
  spec.authors       = ["Valeria Bologan"]
  spec.email         = ["valeria.bologan@insales.ru"]

  spec.summary       = %q{hexlet project 1.}
  spec.description   = %q{hexlet project 1.}
  spec.homepage      = "https://github.com/BologanVN/rails-project-lvl1"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
