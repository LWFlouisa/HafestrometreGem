require_relative 'lib/Hafestrometre/version'

Gem::Specification.new do |spec|
  spec.name          = "Hafestrometre"
  spec.version       = Hafestrometre::VERSION
  spec.authors       = ["Gitea"]
  spec.email         = ["gitea@fake.local"]

  spec.summary       = %q{Guides you through the process of training a constructed language model.}
  spec.description   = %q{I use this process to train my language model as I flesh out my constructed language. Unlike training on a natural language, it is way simpler to actually train an algorithm on a fictional language, specifically with languages you train as you build the language. Still undecided on whether to incorporate this into LearnAnswer, as they completely reshapes how I do machine learning.}
  spec.homepage      = "https://lwflouisa.github.io/Hafestrometre"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'naive_bayes', '~> 0.0.3'
end
