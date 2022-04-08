class SpeakersController < ApplicationController
  before_action :ensure_turbo_frame_request

  def new
    # 登壇者フィールドの追加は turbo_frame_tag の置き換えでは実現できない
    # turbo_stream を使いたいので，new.turbo_stream.erb をレスポンスとして返すように指定
    render formats: :turbo_stream
  end
end
