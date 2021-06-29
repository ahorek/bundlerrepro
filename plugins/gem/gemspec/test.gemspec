
Gem::Specification.new do |s|
  s.name = "test".freeze
  s.version = "2.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  #s.metadata = { "allowed_push_host" => "https://custom.com" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["author".freeze]
  s.date = "2020-02-03"
  s.description = "Description ".freeze
  s.email = ["test@test.com".freeze]
  s.homepage = "https://www.test.com".freeze
  s.licenses = ["GPL-2.0-or-later".freeze]
  s.rubygems_version = "3.2.21".freeze
  s.summary = "Summary".freeze

  s.installed_by_version = "3.2.21" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end
end
