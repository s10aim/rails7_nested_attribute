class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  def index
    @events = Event.order(date: :desc)
  end

  def show
    @speakers = @event.speakers.order(start_time: :asc)
  end

  def new
    @event = Event.new
    @event.speakers.build
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event), notice: '作成しました。'
    else
      render :form, status: :unprocessable_entity
    end
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event), notice: '更新しました。'
    else
      render :form, status: :unprocessable_entity
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, alert: "削除しました。"
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :body, :date,
                                  speakers_attributes: %i[id name title start_time end_time _destroy])
  end
end
