# arjdbc/discover.rb: Declare ArJdbc.extension modules in this file
# that loads a custom module and adapter.

module ::ArJdbc
  extension :CacheDB do |name|
    if name =~ /cache/i
      require 'arjdbc/cachedb'
      true
    end
  end
end
