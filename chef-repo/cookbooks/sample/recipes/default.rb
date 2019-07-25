
log 'message' do
  message "URL = #{node['sample']['URL']}"
  level :fatal
end

data = data_bag_item('sample', 'devops')


log 'message' do
  message "TIMINGS = #{data['timings']}, Mode = #{data['mode']}"
  level :fatal
end

