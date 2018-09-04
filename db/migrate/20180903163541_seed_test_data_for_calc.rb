class SeedTestDataForCalc < ActiveRecord::Migration[5.1]
  def change
  	[Component, Fastening, Inverter, Montage, Panel].each do |m|
      m.categories.keys.each do |c|
        m.create({name: "#{m.name.humanize}-#{c.humanize}", category: c, price_per_kw: rand(1..10)})
      end
  	end
  end
end
