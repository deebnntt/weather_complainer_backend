class Api::V1::HistoricalConditionsController < ApplicationController

  def bycity
    @historical_conditions = HistoricalCondition.all.select { |condition| condition.city_id == params[:cityid].to_i }
    render json: @historical_conditions
  end

  def index
    if HistoricalCondition.last.date.to_s[5..9] == Time.now.to_s[5..9]
      render json: true
    else
      render json: false
    end
  end

  def receivepost
    results = permitted_params
    results.each do |city_name, city_data|
      city = City.find_by(name: city_name)
      city.historical_conditions << HistoricalCondition.create(city_data)
    end
  end

  private

  def permitted_params
    params.require(:results).permit!
  end

end
