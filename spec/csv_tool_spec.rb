require "spec_helper"

describe CsvTool do
  describe '#convert_to_hash_array' do
    it 'converts the CSV array to an array of hashes' do
      csv_array = [['First name', 'Last name'], ['tyler', 'b']]
      expected_hash_array = [{'First name' => 'tyler', 'Last name' => 'b'}]
      hash_array = CsvTool::convert_to_hash_array(csv_array)
      expect(hash_array).to eq(expected_hash_array)
    end
  end

  describe '#remove_column' do
    it 'removes a column from the CSV file based on a string' do
           
    end
  end
end
