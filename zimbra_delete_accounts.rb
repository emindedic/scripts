#!/us/bin/env ruby

require 'open3'

# puts "Enter domain you want to delete"
# enter_domain = gets.chomp.capitalize
# domain = "#{enter_domain}"
domain = "DOMAIN_NAME"

stdout, stderr, status = Open3.capture3("zmprov -l gaa #{domain}")


stdout.split("\n").each do |account|
  system ("zmprov da #{account}")
end

system ("zmprov dd #{domain}")

print ("Accounts and domain successfully deleted")

