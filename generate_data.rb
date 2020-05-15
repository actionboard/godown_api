require 'faker'
require 'date'
require 'pry'


def insert_fake_data
  data = []
  {
      fruits: 1000,
      vegetables: 1000,
      spice: 1000,
      dish: 1000,
      ingredient: 1000,
      brand: 500
  }.each do |fake_item, run_times|
    data += run_times.times.map do
      {
          date:   rand(Date.parse('1 Jan 2020')..Date.parse('1 Jan 2021')).to_s,
          item:   fake_item == :brand ? Faker::Beer.send(fake_item) : Faker::Food.send(fake_item),
          count:  rand(1..300),
          godown: "Godown #{rand(1..5)}"

      }
    end
  end
  File.open('/Users/sunilaadithya/RailsProjects/godown_api/data/data2.json', 'w') {|f| f.write(data.to_json)}
end

insert_fake_data
