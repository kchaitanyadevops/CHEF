# CHEF

## Installation Steps.

### Chef-WorkStation

```
$ sudo yum install https://packages.chef.io/files/stable/chefdk/3.2.30/el/7/chefdk-3.2.30-1.el7.x86_64.rpm -y
```

### Chef-Server

```
$ sudo yum install https://packages.chef.io/files/stable/chef-server/12.17.33/el/7/chef-server-core-12.17.33-1.el7.x86_64.rpm -y
$ sudo chef-server-ctl reconfigure
$ sudo chef-server-ctl user-create admin Admin User admin@student.com 'password' --filename /opt/admin.pem
$ sudo chef-server-ctl org-create student 'Student Project' --association_user admin --filename /opt/student.pem
$ sudo chef-server-ctl install chef-manage
$ sudo chef-server-ctl reconfigure
$ sudo chef-manage-ctl reconfigure
```
