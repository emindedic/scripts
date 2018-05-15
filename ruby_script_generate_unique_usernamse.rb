#!/usr/bin/env ruby

require 'faker'

usernames = Array.new

100.times do
  str =  Faker::Name.first_name.downcase
  usernames.push str
end

# print generate usernames
puts usernames


usernames.each do |user|
 system "zmprov ca #{user}@randomnames.org Pass_123"
end
