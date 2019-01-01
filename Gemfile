source("https://rubygems.org")
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby("2.5.1")

gem("rails", "5.2.1")
gem("rack-attack", "5.4.1")
gem("rack-authentication_bearer", "2.0.2")
gem("rack-cors", "1.0.2")
gem("rack-rewrite", "1.5.1")
gem("rack-timeout", "0.5.1")
gem("connection_pool", "2.2.2")
gem("pg", "1.1.3")
gem("hiredis", "0.6.1")
gem("redis-rails", "5.0.2")
gem("mini_magick", "4.9.2")
gem("puma", "3.12.0")
gem("sidekiq", "5.2.2")
gem("devise", "4.5.0")

gem("sidecloq", "0.4.1")
gem("sidekiq-unique-jobs", "6.0.6")
gem("devise-async", "1.0.0")
gem("action_operation", "2.2.0")
gem("active_record-pool", "2.0.0")
gem("activerecord-like", "2.1")
gem("activerecord-safer_migrations", "2.0.0")
gem("addressable", "2.5.2", :require => false)
gem("ar_after_transaction", "0.5.0")
gem("ar_transaction_changes", "1.1.3")
gem("baby_squeel", "1.3.1")
gem("bootsnap", "1.3.2", :require => false)
gem("bugsnag", "6.8.0")
gem("paper_trail", "10.0.1")
gem("redlock", "0.2.2")
gem("flag_shih_tzu", "0.3.22")
gem("friendly_id", "5.2.4")
gem("goldiloader", "2.1.2")
gem("google_places", "1.2.0")
gem("groupdate", "4.0.1")
gem("gutentag", "2.4.0")
gem("kaminari", "1.1.1")
gem("migration_data", "0.3.0")
gem("money-rails", "1.12.0")
gem("omniauth", "1.8.1")
gem("puma_worker_killer", "0.1.0")
gem("pundit", "2.0.0")
gem("ransack", "2.0.1")
gem("redcarpet", "3.4.0")
gem("redis-objects", "1.4.3")
gem("rein", "3.5.0")
gem("secure_headers", "6.0.0", :require => false)
gem("smart_params", "2.3.1")
gem("state_machines-activerecord", "0.5.1")
gem("strong_migrations", "0.2.3")
gem("timber", "2.6.1")
gem("highline", "2.0.0")
gem("devise-security", "0.12.0")
gem("down", "4.6.0")
gem("geocoder", "1.5.0")
gem("flipper", "0.16.0")
gem("pry-doc", "0.13.4")
gem("pry-rails", "0.3.6")
gem("jsonapi-realizer", "6.0.0.rc1")
gem("jsonapi-materializer", "1.0.0.rc2")

group(:production) do
  gem("newrelic_rpm", "5.4.0.347")
end

group(:development, :test) do
  gem("dotenv-rails", "2.5.0", :require => "dotenv/rails-now")
  gem("rspec-rails", "3.8.0")
  gem("listen", "3.1.5")
  gem("factory_bot_rails", "4.11.1")
  gem("faker", "1.9.1")
  gem("pry-byebug", "3.6.0")
  gem("bullet", "5.7.6")
  gem("active_record_query_trace", "1.5.4")
end

group(:test) do
  gem("rspec-retry", "0.6.1")
  gem("rspec-collection_matchers", "1.1.3")
  gem("timecop", "0.9.1")
  gem("rspec-sidekiq", "3.0.3")
  gem("database_cleaner", "1.7.0")
  gem("rspec_junit_formatter", "0.4.1", :require => unless ENV.fetch("CI", nil) then false end)
end

group(:development) do
  gem("brakeman", "4.3.1", :require => false)
  gem("bundler-audit", "0.6.0", :require => false)
  gem("flamegraph", "0.9.5", :require => false)
  gem("memory_profiler", "0.9.12", :require => false)
  gem("rack-mini-profiler", "1.0.0", :require => false)
  gem("rubocop", "0.59.2", :require => false)
  gem("rubocop-rspec", "1.29.1")
  gem("ruby-prof", "0.17.0", :require => false)
  gem("stackprof", "0.2.12", :require => false)
end
