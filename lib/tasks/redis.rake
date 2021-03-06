namespace :redis do
  task :drop => :environment do
    Poutineer::REDIS_SIDEKIQ_SERVER_CONNECTION_POOL.with(&:flushdb)
    Poutineer::REDIS_SIDEKIQ_CLIENT_CONNECTION_POOL.with(&:flushdb)
    Poutineer::REDIS_OBJECTS_CONNECTION_POOL.with(&:flushdb)
    Poutineer::REDIS_CACHE_CONNECTION_POOL.with(&:flushdb)
    # Poutineer::REDIS_REDLOCK_CONNECTION_POOL.with(&:flushdb)
    # TODO: Figure out how to clear redlock?
  end
end
