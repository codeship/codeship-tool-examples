require 'redis'
require 'pg'
require 'retriable'

Retriable.configure do |c|
  c.tries = 10
end

Retriable.retriable on: [Errno::ECONNREFUSED, Redis::CannotConnectError] do
  puts 'Redis'
  redis = Redis.new(host: 'redis')
  puts "REDIS VERSION: #{redis.info['redis_version']}"
end

postgres_username = 'postgres'
postgres_password = ''
Retriable.retriable on: [PG::ConnectionBad] do
  puts 'retrying postgres connection'
  @test = PG.connect('postgres', 5432, '', '', 'postgres', postgres_username, postgres_password)
end

puts @test.exec('SELECT version();').first['version']
