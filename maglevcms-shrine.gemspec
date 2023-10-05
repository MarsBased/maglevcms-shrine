# frozen_string_literal: true

require_relative 'lib/maglev/shrine/version'

Gem::Specification.new do |spec|
  spec.name = 'maglevcms-shrine'
  spec.version = Maglev::Shrine::VERSION
  spec.authors = ['MarsBased']
  spec.email = ['dev@marsbased.com']
  spec.licenses = ['MIT']

  spec.summary = 'Integrates Maglev CMS with Shrine.'
  spec.description = 'Changes assets management in Maglev CMS to use Shrine.'
  spec.homepage = 'https://github.com/MarsBased/maglevcms-shrine'
  spec.required_ruby_version = '>= 2.7.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/MarsBased/maglevcms-shrine'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir['{lib,db}/**/*', 'README.md']
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'maglevcms', '~> 1.0'
  spec.add_dependency 'shrine', '~> 3.0'
end
