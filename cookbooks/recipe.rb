package 'httpd'
service 'httpd' do
    action [:start, :enable]
end

remote_file '/var/www/html/index.html' do
    owner 'apache'
    group 'apache'
end

%w{php php-devel php-mbstring php-gd}.each do |pkg|
    package pkg
end

file '/etc/php.ini' do
    action :edit
    block do |content|
        content.gsub!(/^;date.timezone =$/, 'date.timezone = Asia/Tokyo')
    end
end

directory '/home/vagrant/myapp'
