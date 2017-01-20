require "csv_tool/version"
require "csv"

class CsvTool
  def self.convert_to_hash_array(csv_array)
    fields = csv_array.shift
    csv_array.collect { |record| Hash[*fields.zip(record).flatten ] }
  end

  def self.remove_column(csv_hash_array, column_name)
    csv_hash_array.each do |row|
      if row.has_key?(column_name)
        row.delete(column_name)
      end
    end
  end

  def self.remove_row_with_value(csv_hash_array, column_name, value)
    csv_hash_array.each do |row|
      if row[column_name] == value
        csv_hash_array.delete_at(csv_hash_array.index(row))
      end
    end
  end
end
