require 'spec_helper'

# describe file('/home/vagrant/myapp') do
#     it { should be_directory }
# end
describe command('ls -la /home/vagrant') do
    its(:stdout) { should match /\smyapp$/ }
end
