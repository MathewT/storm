# -*- encoding: utf-8 -*-
# stub: sidekiq-recycler 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sidekiq-recycler"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chetan Sarva"]
  s.date = "2013-10-14"
  s.description = "Gracefully recycle sidekiq processes that use too much memory"
  s.email = "chetan@pixelcop.net"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md"]
  s.homepage = "http://github.com/chetan/sidekiq-recycler"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Recycle large sidekiq processes"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sidekiq>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<logging>, [">= 0"])
      s.add_development_dependency(%q<easycov>, [">= 0"])
      s.add_development_dependency(%q<micron>, [">= 0"])
    else
      s.add_dependency(%q<sidekiq>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<logging>, [">= 0"])
      s.add_dependency(%q<easycov>, [">= 0"])
      s.add_dependency(%q<micron>, [">= 0"])
    end
  else
    s.add_dependency(%q<sidekiq>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<logging>, [">= 0"])
    s.add_dependency(%q<easycov>, [">= 0"])
    s.add_dependency(%q<micron>, [">= 0"])
  end
end
