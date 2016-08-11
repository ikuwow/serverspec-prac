require 'spec_helper'

%w{php php-devel php-mbstring php-gd}.each do |pkg|
    describe package(pkg) do
        it { should be_installed }
    end
end

describe php_config('date.timezone') do
    its(:value) { should eq 'Asia/Tokyo' }
end

