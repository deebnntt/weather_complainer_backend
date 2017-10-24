class Api::V1::HistoricalConditionsController < ApplicationController

  def bycity
    @historical_conditions = HistoricalCondition.find_by(city_id: params[:cityid])
    render json: @historical_conditions
  end

  def index    
  end

end
