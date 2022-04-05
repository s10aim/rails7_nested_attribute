class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  def index
    @events = Event.order(created_at: :desc)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = '作成しました。'
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def update
    if @event.update(event_params)
      flash[:notice] = '更新しました。'
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    flash[:alert] = '削除しました。'
    redirect_to events_path
  end

  private

  def set_event
    Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :body, :date,
                                  speakers: %i[id name title start_time end_time _destroy])
  end
end
