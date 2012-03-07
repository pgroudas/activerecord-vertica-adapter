# arjdbc/discover.rb: Declare ArJdbc.extension modules in this file
# that loads a custom module and adapter.

module ::ArJdbc
  extension :Vertica do |name|
    if name =~ /vertica/i
      require 'arjdbc/vertica'
      true
    end
  end
end
