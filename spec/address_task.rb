$:.unshift File.expand_path('../lib', __FILE__)

require 'valid_addr.rb'
require 'YAML'

  new_list = AddressList.new('addresses.txt')

  File.open('output/Valid_Addresses.txt', 'w') do |va|
    va.puts new_list.print_valid.compact!
  end

  File.open('output/Flagged_Addresses.txt', 'w') do |fa|
    fa.puts new_list.print_flagged.compact!
  end


  File.open('output/Hashed_addresses.txt', 'w') do |ha|
    ha.puts new_list.addresses
  end

  File.open('output/Suffix_added.txt', 'w') do |ns|
    ns.puts new_list.convert!('add suffix')
  end

  File.open('output/Reformatted.txt', 'w') do |rf|
    new_list.addresses.each do |item|
      rf.puts item.view
    end
  end

  File.open('output/Addresses.yaml', 'w') do |ya|
    new_list.addresses.each do |item|
      ya.puts item.to_yaml
    end
  end


