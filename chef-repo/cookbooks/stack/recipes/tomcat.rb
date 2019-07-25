package 'Installing Java' do 
    package_name 'java'
    action :install
end

remote_file "Downloading Tomcat" do 
    source "#{node['stack']['TOMCAT_URL']}"
    path "/opt/#{node['stack']['TOMCAT_TAR']}"
    action :create
end

execute "Extracting Tomcat" do 
    command "tar -xf #{node['stack']['TOMCAT_TAR']}"
    cwd "/opt"
    not_if { File.exists?("/opt/#{node['stack']['TOMCAT_DIR']}") }
end

Dir["/opt/#{node['stack']['TOMCAT_DIR']}/webapps/*"].each do |appsname| 
    if File.directory?("#{appsname}")
        directory "Removing Directory #{appsname}" do 
            path "#{appsname}"
            recursive true
            action :delete
        end
    end
    if File.file?("#{appsname}")
        file "Removing file #{appsname}" do 
            path "#{appsname}"
            action :delete
        end
    end
end

remote_file "Downloading War File" do 
    source "#{node['stack']['WAR_URL']}"
    path "/opt/#{node['stack']['TOMCAT_DIR']}/webapps/student.war"
    action :create
end

remote_file "Downloading JDBC Jar File" do 
    source "#{node['stack']['JDBC_URL']}"
    path "/opt/#{node['stack']['TOMCAT_DIR']}/lib/mysql-connector-java.jar"
    action :create
end

template 'Updating Context.XML file' do 
    source 'context.xml.erb'
    path "/opt/#{node['stack']['TOMCAT_DIR']}/conf/context.xml"
end

execute "Stopping Tomcat" do 
    command "/opt/#{node['stack']['TOMCAT_DIR']}/bin/shutdown.sh"
    not_if { `ps -ef | grep tomcat | grep -v grep -c`.to_i == 1 }
end

execute "Starting Tomcat" do 
    command "/opt/#{node['stack']['TOMCAT_DIR']}/bin/startup.sh"
    not_if { `ps -ef | grep tomcat | grep -v grep -c`.to_i == 1 }
end
