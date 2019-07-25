default['stack']['TOMCAT_URL']='http://mirrors.wuchna.com/apachemirror/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz'
default['stack']['TOMCAT_TAR']="#{default['stack']['TOMCAT_URL']}".split('/').last
default['stack']['TOMCAT_DIR']="#{default['stack']['TOMCAT_TAR']}".sub('.tar.gz', '')
default['stack']['WAR_URL']='https://github.com/cit-aliqui/APP-STACK/raw/master/student.war'
default['stack']['JDBC_URL']='https://github.com/cit-aliqui/APP-STACK/raw/master/mysql-connector-java-5.1.40.jar'
default['stack']['DBNODE']="#{node['ipaddress']}"

