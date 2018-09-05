class Calculator
  include ActiveModel::Model

  attr_accessor :power, :price_categrory, :position

  def process
    {
      incomes: {
        per_year: income_per_year,
        per_ten_years: income_per_ten_years,
      },
      estimate: {
        panels: estimate_panels,
        inverters: estimate_inverters,
        fastenings: estimate_fastenings,
        components: estimate_components,
        montage: estimate_montage
      },
    }
  end

  def persisted?
    false
  end

  protected

  def income_per_year
    rand(10..100)
  end

  def income_per_ten_years
    rand(100..1000)
  end

  def estimate_panels
    {
      name: 'panels',
      price: rand(10..100)
    }
  end

  def estimate_inverters
    {
      name: 'inverters',
      price: rand(10..100)
    }
  end

  def estimate_fastenings
    {
      name: 'fastenings',
      price: rand(10..100)
    }
  end

  def estimate_components
    {
      name: 'components',
      price: rand(10..100)
    }
  end

  def estimate_montage
    {
      name: 'montage',
      price: rand(10..100)
    }
  end

end