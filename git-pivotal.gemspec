# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{git-pivotal}
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeff Tucker", "Sam Stokes"]
  s.date = %q{2010-10-15}
  s.description = %q{A collection of git utilities to ease integration with Pivotal Tracker}
  s.email = %q{jeff@trydionel.com}
  s.executables = ["git-bug", "git-chore", "git-deliver", "git-feature", "git-finish", "git-pick"]
  s.extra_rdoc_files = [
    "LICENSE"
  ]
  s.files = [
    ".gitignore",
     "CHANGELOG",
     "LICENSE",
     "Rakefile",
     "VERSION",
     "bin/git-bug",
     "bin/git-chore",
     "bin/git-deliver",
     "bin/git-feature",
     "bin/git-finish",
     "bin/git-pick",
     "git-pivotal.gemspec",
     "lib/commands/base.rb",
     "lib/commands/bug.rb",
     "lib/commands/chore.rb",
     "lib/commands/deliver.rb",
     "lib/commands/feature.rb",
     "lib/commands/finish.rb",
     "lib/commands/pick.rb",
     "lib/pivotal.rb",
     "lib/pivotal/api.rb",
     "lib/pivotal/associations.rb",
     "lib/pivotal/attributes.rb",
     "lib/pivotal/base.rb",
     "lib/pivotal/collection.rb",
     "lib/pivotal/project.rb",
     "lib/pivotal/story.rb",
     "readme.markdown",
     "spec/commands/base_spec.rb",
     "spec/commands/bug_spec.rb",
     "spec/commands/chore_spec.rb",
     "spec/commands/feature_spec.rb",
     "spec/commands/finish_spec.rb",
     "spec/factories.rb",
     "spec/factory.rb",
     "spec/pivotal/api_spec.rb",
     "spec/pivotal/associations_spec.rb",
     "spec/pivotal/attributes_spec.rb",
     "spec/pivotal/base_spec.rb",
     "spec/pivotal/collection_spec.rb",
     "spec/pivotal/project_spec.rb",
     "spec/pivotal/story_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/trydionel/git-pivotal}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A collection of git utilities to ease integration with Pivotal Tracker}
  s.test_files = [
    "spec/commands/base_spec.rb",
     "spec/commands/bug_spec.rb",
     "spec/commands/chore_spec.rb",
     "spec/commands/feature_spec.rb",
     "spec/commands/finish_spec.rb",
     "spec/factories.rb",
     "spec/factory.rb",
     "spec/pivotal/api_spec.rb",
     "spec/pivotal/associations_spec.rb",
     "spec/pivotal/attributes_spec.rb",
     "spec/pivotal/base_spec.rb",
     "spec/pivotal/collection_spec.rb",
     "spec/pivotal/project_spec.rb",
     "spec/pivotal/story_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_runtime_dependency(%q<rest-client>, ["~> 1.4.0"])
      s.add_runtime_dependency(%q<builder>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<rest-client>, ["~> 1.4.0"])
      s.add_dependency(%q<builder>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<rest-client>, ["~> 1.4.0"])
    s.add_dependency(%q<builder>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end

