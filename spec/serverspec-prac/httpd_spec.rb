require 'spec_helper'

describe package('httpd') do # resource
    it { should be_installed } # matcher
end

describe service('httpd') do
    it { should be_enabled }
    it { should be_running }
end

describe port(80) do
    it { should be_listening }
end
