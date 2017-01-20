require "spec_helper"

describe CsvTool do
  let(:csv_array){ [['First name', 'Last name'], ['tyler', 'b']] }
  let(:csv_hash_array){[{'First name' => 'tyler', 'Last name' => 'b'}]}
  describe '#convert_to_hash_array' do
    it 'converts the CSV array to an array of hashes' do
      expected_hash_array = [{'First name' => 'tyler', 'Last name' => 'b'}]
      hash_array = CsvTool::convert_to_hash_array(csv_array)
      expect(hash_array).to eq(expected_hash_array)
    end
  end

  describe '#remove_column' do
    it 'removes a column from the CSV hash array' do
      expected_hash_array = [{'Last name' => 'b'}]
      hash_array = CsvTool::remove_column(csv_hash_array, 'First name')
      expect(hash_array).to eq(expected_hash_array)
    end
  end

  describe '#remove_row_with_value' do
    it 'removes the row from the csv hash array that contains a certain value' do
      expected = []
      actual = CsvTool::remove_row_with_value(csv_hash_array, 'First name', 'tyler')
      expect(actual).to eq(expected)
    end
  end
end
