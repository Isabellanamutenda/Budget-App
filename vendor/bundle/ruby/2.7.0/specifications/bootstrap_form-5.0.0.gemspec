# -*- encoding: utf-8 -*-
# stub: bootstrap_form 5.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "bootstrap_form".freeze
  s.version = "5.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Stephen Potenza".freeze, "Carlos Lopes".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-11-12"
  s.description = "bootstrap_form is a rails form builder that makes it super easy to create beautiful-looking forms using Bootstrap 5".freeze
  s.email = ["potenza@gmail.com".freeze, "carlos.el.lopes@gmail.com".freeze]
  s.homepage = "https://github.com/bootstrap-ruby/bootstrap_form".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Rails form builder that makes it easy to style forms using Bootstrap 5".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<actionpack>.freeze, [">= 5.2"])
    s.add_runtime_dependency(%q<activemodel>.freeze, [">= 5.2"])
    s.add_development_dependency(%q<rails>.freeze, [">= 5.2"])
  else
    s.add_dependency(%q<actionpack>.freeze, [">= 5.2"])
    s.add_dependency(%q<activemodel>.freeze, [">= 5.2"])
    s.add_dependency(%q<rails>.freeze, [">= 5.2"])
  end
end
