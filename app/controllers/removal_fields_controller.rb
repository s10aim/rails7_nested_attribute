class RemovalFieldsController < ApplicationController
  before_action :ensure_turbo_frame_request

  def new
    render turbo_stream: turbo_stream.remove(params[:uuid])
  end

  def edit
    render turbo_stream: turbo_stream.replace(params[:uuid], partial: 'partials/removal_field')
  end
end
