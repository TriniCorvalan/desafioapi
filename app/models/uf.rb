class Uf < ApplicationRecord
    def self.load_csv_data
        file = File.open('/tmp/ufenefeb.csv')
        file_data = file.readlines.map(&:chomp)
            file_data.each_with_index do |row, index|
                next if index.zero?
                cols = row.split(',')
                Uf.create(date: "2019-01-#{cols[0]}", value: cols[1].to_f)
                Uf.create(date: "2019-01-#{cols[0]}", value: cols[2].to_f) if index < 29
            end

    end
end
