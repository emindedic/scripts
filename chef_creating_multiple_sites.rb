www_dir = '/var/www'
domain  = 'domain.com'
sajts   = ['sajt01','sajt02','sajt03', 'sajt04']


sajts.each do |sajt|
  user sajt do
    home "/home/#{sajt}"
    shell '/bin/bash'
    action :create
  end
  directory www_dir do
    owner 'www-data'
    group 'www-data'
    mode '0755'
    action :create
  end
  directory "#{www_dir}/#{sajt}.#{domain}/web" do
    owner "#{sajt}"
    group "#{sajt}"
    mode '0755'
    action :create
    recursive true
  end
  directory "#{www_dir}/#{sajt}.#{domain}" do
    owner "#{sajt}"
    group "#{sajt}"
    mode '0755'
    action :create
    recursive true
  end
end
