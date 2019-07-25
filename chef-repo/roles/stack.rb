name "stack"
description "The stack role"
run_list "recipe[stack]"
env_run_lists "dev" => ["recipe[stack::tomcat]", "recipe[stack::mariadb]", "recipe[stack::httpd]"], "prod" => ["recipe[stack::tomcat]", "recipe[stack::httpd]"], "_default" => []
