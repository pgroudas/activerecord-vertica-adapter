# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name              = 'activerecord-vertica-adapter'
  s.version           = '0.1'
  s.date              = '2012-03-05'

  s.platform = Gem::Platform.new([nil, "java", nil])
  s.rubyforge_project = %q{jruby-extras}

  s.summary     = "ActiveRecord adapter for Vertica."
  s.description = "ActiveRecord adapter for Vertica. Only for use with JRuby. Requires separate Vertica JDBC driver."

  s.authors  = ["Paul Groudas"]
  s.email    = 'paul@intentmedia.com'
  s.homepage = 'https://github.com/pgroudas/activerecord-vertica-adapter'
  s.require_paths = %w[lib]
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md LICENSE]

  # = MANIFEST =
  s.files = %w[
    LICENSE
    README.md
    Rakefile
    activerecord-vertica-adapter.gemspec
    lib/active_record/connection_adapters/vertica_adapter.rb
    lib/activerecord-vertica-adapter.rb
    lib/arjdbc/vertica.rb
    lib/arjdbc/vertica/adapter.rb
    lib/arjdbc/vertica/connection_methods.rb
    lib/arjdbc/discover.rb
    test/vertica_simple_test.rb
    test/db/vertica.rb
  ]
  # = MANIFEST =

  s.test_files = s.files.select { |path| path =~ /^test\/.*test.*\.rb/ }

  s.add_dependency(%q<activerecord-jdbc-adapter>, [">= 1.0.0"])

  s.rubygems_version = %q{1.3.7}
  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3
  end
end
