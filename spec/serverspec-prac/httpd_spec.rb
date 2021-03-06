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

describe file('/var/www/html/index.html') do
    it { should be_file }
    it { should be_owned_by 'apache' }
    its(:content) { should match(/Hello World/) }
end
