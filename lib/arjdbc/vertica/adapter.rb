module ActiveRecord
 module ConnectionAdapters
  AR_TO_JDBC_TYPES[:string] << lambda {|r| r['type_name'] =~ /varchar$/i} # For Vertica
 end
end

module ::ArJdbc
  module Vertica
  end
end
