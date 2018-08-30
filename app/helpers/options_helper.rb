module OptionsHelper
  def categories_by_price_options
    [:cheap, :standard, :premium].map {|opt| [opt.to_s.humanize, opt]}
  end

  def roof_ground_options
    [:roof, :ground].map {|opt| [opt.to_s.humanize, opt]}
  end
end
