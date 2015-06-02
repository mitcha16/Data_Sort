require 'csv'

abc = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
alphabet = abc.chars
file = CSV.read("customers.csv", headers: true)

alphabet.map do |index|
  file.each do |row|
    if row["last_name"][0] == index
      new = File.open("customers_#{index}.csv", "a")
      new << row
    end
  end

end
