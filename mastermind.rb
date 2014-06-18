Dir['./lib/*.rb'].each{ |file| require "#{file}" } #loads & requires any files in the .lib


CLI.new.start
