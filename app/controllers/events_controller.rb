class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new

    if @event.save
      redirect_to event_url(@event)
    else
      fash.now[:errors] = @event.errors.full_messages
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to event_url(@event)
    else
      flash.now[:errors] = @event.errors.full_messages
      render :edit
    end
  end

  def delete
    event = Event.find(params[:id])
    event.destroy
    redirect_to events_url
  end

  private
  def event_params
    params.require(:event).permit(:title, :description)
  end
end
