class RemovalSpeakersController < ApplicationController
  before_action :ensure_turbo_frame_request

  def new
    render turbo_stream: turbo_stream.remove(params[:uuid])
  end

  def edit
    render formats: :turbo_stream
  end
end
