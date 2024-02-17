require 'csv'

def parse_csv(file_name)
  csv_data = []

  CSV.foreach(file_name, headers: true) do |row|
    csv_data << row.to_h
  end

  csv_data
end

data = parse_csv('data.csv')
puts data.inspect