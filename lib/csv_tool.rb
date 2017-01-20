require "csv_tool/version"
require "csv"

class CsvTool
  def self.convert_to_hash_array(csv_array)
    fields = csv_array.shift
    csv_array.collect { |record| Hash[*fields.zip(record).flatten ] }
  end
end
