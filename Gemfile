require 'pathname'

source 'https://rubygems.org'

gemspec

DM_VERSION     = '~> 1.3.0.beta'.freeze
DO_VERSION     = '~> 0.10.6'.freeze
CURRENT_BRANCH = ENV.fetch('GIT_BRANCH', 'master')

do_options = {}
do_options[:git] = 'firespring/datamapper-do' if ENV['DO_GIT'] == 'true'

gem 'dm-do-adapter', DM_VERSION, git: 'firespring/dm-do-adapter', branch: CURRENT_BRANCH

group :development do

  gem 'dm-migrations', DM_VERSION, git: "firespring/dm-migrations", branch: CURRENT_BRANCH

end

platforms :mri_18 do
  group :quality do

    gem 'rcov'
    gem 'yard'
    gem 'yardstick'

  end
end

group :datamapper do

  gem 'dm-core', DM_VERSION, git: 'firespring/dm-core', branch: CURRENT_BRANCH

  gem 'data_objects', DO_VERSION, do_options.dup

  plugins = ENV['PLUGINS'] || ENV.fetch('PLUGIN', nil)
  plugins = plugins.to_s.tr(',', ' ').split.push('dm-migrations').uniq

  plugins.each do |plugin|
    gem plugin, DM_VERSION, git: "firespring/#{plugin}", branch: CURRENT_BRANCH
  end

end
