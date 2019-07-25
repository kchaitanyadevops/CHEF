package "Installing MariaDB Server" do 
    package_name "mariadb-server"
    action :install 
end 

service "Starting MariaDB service" do
    service_name 'mariadb'
    action [ :enable, :start ]
end

cookbook_file 'Copying student.sql file' do
    source 'student.sql'
    path '/tmp/student.sql'
    action :create
end

execute "Loading Schema" do 
    command 'mysql < /tmp/student.sql'
end
