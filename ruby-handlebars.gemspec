# frozen_string_literal: true

# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

# stub: ruby-handlebars 0.0.6 ruby lib

Gem::Specification.new do |s|
  s.name = 'ruby-handlebars'
  s.version = '0.0.6'

  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.require_paths = ['lib']
  s.authors = ['Vincent Pretre', 'Hiptest R&D']
  s.date = '2018-02-12'
  s.email = 'v.pretre@hiptest.net'
  s.extra_rdoc_files = [
    'LICENSE',
    'README.md'
  ]
  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.homepage = 'https://github.com/vincent-psarga/ruby-handlebars'
  s.rubygems_version = '2.6.10'
  s.summary = 'Pure Ruby library for Handlebars templates'

  s.add_runtime_dependency('colorize', ['>= 0.7.5', '~> 0.7'])

  s.add_runtime_dependency('parslet', ['>= 1.6.2', '~> 1.6'])
  s.add_development_dependency('codeclimate-test-reporter', ['>= 0.4.6', '~> 0.4'])
  s.add_development_dependency('pry', ['>= 0.10.1', '~> 0.10'])
  s.add_development_dependency('pry-stack_explorer', ['>= 0.4.9.1', '~> 0.4'])
  s.add_development_dependency('rspec', ['>= 3.8.0'])
  s.add_development_dependency('rspec-mocks', ['>= 3.8.0'])
end
