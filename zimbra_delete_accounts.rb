#!/us/bin/env ruby

require 'open3'

puts "Enter domain you want to delete"
domain = gets.chomp.capitalize


stdout, stderr, status = Open3.capture3("zmprov -l gaa #{domain}")


stdout.split("\n").each do |account|
  system ("zmprov da #{account}")
end
