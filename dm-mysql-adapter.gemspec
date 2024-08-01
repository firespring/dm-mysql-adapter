require File.expand_path('lib/dm-mysql-adapter/version', __dir__)

Gem::Specification.new do |gem|
  gem.name        = 'dm-mysql-adapter'
  gem.summary     = 'MySQL Adapter for DataMapper'
  gem.description = 'A MySQL Adapter for DataMapper'
  gem.email       = 'dan.kubb@gmail.com'
  gem.homepage    = 'https://datamapper.org'
  gem.authors     = ['Dan Kubb']
  gem.license = 'Nonstandard'

  gem.files            = `git ls-files`.split("\n")
  gem.extra_rdoc_files = %w(LICENSE)

  gem.require_paths = %w(lib)
  gem.version       = DataMapper::MysqlAdapter::VERSION
  gem.required_ruby_version = '>= 2.7.8'

  gem.add_runtime_dependency('dm-do-adapter', ['~> 1.3.0.beta'])
  gem.add_runtime_dependency('do_mysql', ['~> 0.10.17'])
end
