# Helper functions
module MysqlHelper
  # Note: ensure this is called at runtime rather than compile-time
  # e.g. via `lazy` or `ruby_block`
  def self.mysql_base_dir
    mysql_executable = Pathname.new('/usr/local/bin/mysql').realpath
    mysql_bin_dir = File.dirname(mysql_executable)
    File.join(mysql_bin_dir, '../').to_s
  end
end
