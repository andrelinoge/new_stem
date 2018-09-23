class CalculatorsController < ApplicationController
  def show
    @calc = Calculator.new(power: 0)
  end

  def create
    respond_to do |format|
      format.html { redirect_to calculator_url }
      format.js {
        @results = Calculator.new(calc_params).process
      }
    end
  end

  protected

  def calc_params
    params.require(:calculator).permit(:power, :price_categrory, :position)
  end

end