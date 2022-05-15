# frozen_string_literal: true

require_relative 'lib/ipgeobase/version'

Gem::Specification.new do |spec|
  spec.name = 'ipgeobase'
  spec.version = Ipgeobase::VERSION
  spec.authors = ['hellpl4y@gmail.com']
  spec.email = ['hellpl4y@gmail.com']

  spec.summary       = 'Example summary'
  spec.description   = 'Example description'
  spec.homepage      = 'https://github.com/infl4me/some-ruby-gem'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.0.0')

  spec.metadata['allowed_push_host'] = 'https://example.com'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/infl4me/some-ruby-gem'
  spec.metadata['changelog_uri'] = 'https://github.com/infl4me/some-ruby-gem'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata['rubygems_mfa_required'] = 'true'
end
