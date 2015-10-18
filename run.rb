require 'json' # from ruby stdlib
require 'rubygems'
# Set up bundler and require all the default: group gems
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __FILE__)
require 'bundler/setup' if File.exist?(ENV['BUNDLE_GEMFILE'])
Bundler.require(:default)

require 'active_support/core_ext/numeric/time.rb'

Airbrake.configure do |config|
  config.api_key = ENV['AIRBRAKE_API_KEY']
end if ENV['AIRBRAKE_API_KEY']

# Set up Sidekiq
Sidekiq.configure_server do |config|
  config.server_middleware do |chain|
    chain.add(Sidekiq::Recycler, :mem_limit => ENV['SIDEKIQ_MEM_MAX'] ? ENV['SIDEKIQ_MEM_MAX'].to_i : 300_000,
              :hard_limit_sec => ENV['SIDEKIQ_REAP_DURATION'] ? ENV['SIDEKIQ_REAP_DURATION'].to_i : 120)
  end
end

# Set up environmental config
$mother_url = (ENV['MOTHER_URL'] || "").freeze
$vti_api_key = (ENV['VTI_API_KEY'] || "").freeze

# Require all the jobs
Dir[File.expand_path('../jobs/*.rb', __FILE__)].each {|file| require file }

# Require other libs
Dir[File.expand_path('../lib/*.rb', __FILE__)].each {|file| require file }
