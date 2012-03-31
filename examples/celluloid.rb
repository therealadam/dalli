require 'bundler/setup'
require 'dalli'

c = Dalli::Client.new('127.0.0.1', :celluloid => true)
p c.flush
p c.set('hork', 'yep!')
p c.get('hork')

