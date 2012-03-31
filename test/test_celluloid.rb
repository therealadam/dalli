require 'helper'
require 'memcached_mock'

describe 'Celluloid-IO' do

  context 'using a live server' do
    should 'pass a simple smoke test' do
      memcached(19122, '', :celluloid => true) do |dc|
        resp = dc.flush
        assert !resp.nil?
      end
    end
  end

end

