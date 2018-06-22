class Api::CalendarDatesController < ApplicationController
  def index
    @dates = CalendarDate.all
  end

  def show
    @date = CalendarDate.find(params[:id])
  end
end
