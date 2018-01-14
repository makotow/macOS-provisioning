#!/usr/bin/env ruby

def format(stdout)

  stdout.each_line do | line |
    #  - {name: '1Password', store_hash: 443987910}
    apps = line.split
    puts "  - {name: '#{apps[1]}', store_hash: #{apps[0]}}"
  end
end

format(`mas list`)