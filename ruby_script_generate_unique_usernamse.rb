#!/usr/bin/env ruby

require 'faker'

usernames = Array.new

100.times do
  str =  Faker::Name.first_name.downcase
  usernames.push str
end

while loop do
  puts 'Enter your domain name:'

  user_input = gets.chomp.capitalize
  if user_input == ''
    puts "Please add your domain"
  elsif
    system("zmprov cd #{user_input} zimbraAuthMech zimbra")
  break
 end
end


usernames.each do |user|
  system ("zmprov ca #{user}@#{user_input} PassWD_123")
end

puts "Accounts added"
