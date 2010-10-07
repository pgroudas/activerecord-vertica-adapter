activerecord-cachedb-adapter
===========================

This is an ActiveRecord adapter for Intersystems CacheDB extracted
from the activerecord-jdbc-adapter project.

This project is currently looking for a maintainer, as I am not a
CacheDB user and have no way of knowing if this code works.

This project is also an example of the activerecord-jdbc-adapter
adapter extension discovery mechanism, and how you might organize a
gem for your custom database. In particular, note:

- `lib/arjdbc/discover.rb`: This file gets loaded by
  activerecord-jdbc-adapter, and where you register your driver.
  Follow the conventions in that file, putting an 
- `lib/arjdbc/cachedb*`: Organize the ::ArJdbc::CacheDB code in here.
  Typically you'll have a `connection_methods.rb` file which creates a
  `cachedb_connection` method on ActiveRecord::Base as well as an
  `adapter.rb` file which contains most of the custom adapter code.
- `lib/active_record/connection_adapters/cachedb_adapter.rb`: This
  file is what allows ActiveRecord to load an adapter from its
  `adapter: cachedb` line in database.yml.
