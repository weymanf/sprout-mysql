require 'spec_helper'
require 'timeout'

describe 'sprout-mysql' do
  before :all do
    expect(system('soloist')).to be_truthy
  end

  it 'starts mysql' do
    Timeout.timeout(60) do
      until system('ls /tmp/mysql.sock')
        sleep 1
      end
    end
  end
end
