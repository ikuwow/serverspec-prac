package 'httpd'
service 'httpd' do
    action [:start, :enable]
end

remote_file '/var/www/html/index.html' do
    owner 'apache'
    group 'apache'
end
