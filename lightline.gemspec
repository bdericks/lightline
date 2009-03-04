Gem::Specification.new do |s|
  s.name = %q{lightline}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ben Erickson"]
  s.date = %q{2009-03-04}
  s.default_executable = %q{lh}
  s.description = %q{Commandline interface for viewing Lighthouse tickets}
  s.email = %q{ben@benerickson.com}
  s.executables = ["lh"]
  s.extra_rdoc_files = ["History.txt", "README.txt", "bin/lh"]
  s.files = ["History.txt", "README.txt", "Rakefile", "bin/lh", "lib/lightline.rb", "lib/lightline/cli.rb", "lib/lightline/run.rb", "spec/lightline_spec.rb", "spec/spec_helper.rb", "test/test_lightline.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/bdericks/lightline/tree/master}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{lightline}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Commandline interface for viewing Lighthouse tickets}
  s.test_files = ["test/test_lightline.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_development_dependency(%q<bones>, [">= 2.4.2"])
    else
      s.add_dependency(%q<bones>, [">= 2.4.2"])
    end
  else
    s.add_dependency(%q<bones>, [">= 2.4.2"])
  end
end
