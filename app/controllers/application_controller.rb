class ApplicationController < ActionController::Base
  private

  def ensure_turbo_frame_request
    redirect_to events_path unless turbo_frame_request?
  end
end
