class PagesController < ApplicationController
  def home
  end

  def cabs
    @cabs = Cab::ALL
  end

  def show_cab
    @cab = Cab.find_by_id(params[:id])
    render plain: "Cabinet not found.", status: 404 unless @cab
  end
end
