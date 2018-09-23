class Calculator
  include ActiveModel::Model
  include ActiveModelAttributes
  include ActionView::Helpers::NumberHelper

  attribute :power, :integer
  attribute :price_categrory, :string
  attribute :position, :string

  INCOME_COEFF     = 0.145
  GENERATION_COEFF = 1100
  MIN_POWER        = 0
  MAX_POWER        = 35

  def process
    result = {
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
      generation: {
        per_year: generation_per_year,
        per_ten_years: generation_per_ten_years,
      }
    }

    result[:estimate][:total] = {
      model: nil,
      price: formatted_number(result[:estimate].values.inject(0) {|sum, n| sum + n[:price].to_f })
    }

    result
  end

  def persisted?
    false
  end

  protected

  def income_per_year
    generation_per_year * INCOME_COEFF
  end

  def income_per_ten_years
    formatted_number(generation_per_ten_years * INCOME_COEFF)
  end

  def estimate_panels
    panel = Panel.where(category: price_categrory).last
    price_per_kw = panel&.price_per_kw

    {
      model: panel&.name,
      price: formatted_number(price_per_kw * power)
    }
  end

  def estimate_inverters
    inverter     = Inverter.by_category(price_categrory).in_range(power).last
    price_per_kw = inverter&.price_per_kw || 0

    {
      model: inverter&.name,
      price: formatted_number(price_per_kw * power)
    }
  end

  def estimate_fastenings
    fastening    = Fastening.where(category: position).last
    price_per_kw = fastening&.price_per_kw

    {
      model: I18n.t("calc.form.position.#{position}"),
      price: formatted_number(price_per_kw * power)
    }
  end

  def estimate_components
    component    = Component.where(category: price_categrory).last
    price_per_kw = component&.price_per_kw || 0

    {
      model: component&.name,
      price: formatted_number(price_per_kw * power)
    }
  end

  def estimate_montage
    montage      = Montage.where(category: position).last
    price_per_kw = montage&.price_per_kw || 0

    {
      model: I18n.t("calc.form.position.#{position}"),
      price: formatted_number(price_per_kw * power)
    }
  end

  def generation_per_year
    GENERATION_COEFF * power
  end

  def generation_per_ten_years
    GENERATION_COEFF * power * 10
  end

  def total_price
    {
      model: nil,
      price: rand(10..100)
    }
  end

  def formatted_number(value)
    number_with_precision(
      value,
      strip_insignificant_zeros: true,
      precision: 2
    )
  end

end