class SeedTestDataForCalc < ActiveRecord::Migration[5.1]
  def change
  	[Component, Fastening, Montage, Panel].each do |m|
      m.categories.keys.each do |c|
        m.create({name: "#{m.name.humanize}-#{c.humanize}", category: c, price_per_kw: rand(1..10)})
      end
  	end

    min, max = 0, 10
    Inverter.categories.keys.each do |c|
      Inverter.create({
        name: "#{Inverter.name.humanize}-#{c.humanize}",
        category: c,
        price: rand(min..max),
        range_min: min,
        range_max: max
      })

      min = max
      max += 10
    end
  end
end
