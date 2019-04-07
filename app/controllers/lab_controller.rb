class LabController < ApplicationController
  def delay
    time = Time.zone.now
    time = [time, time.to_datetime.strftime("%Q").last(3)].join "."
    sleep params[:seconds]&.to_i || 1
    render plain: time
  end

  def env
    data = {
      ENV: ENV.sort.to_h,
      headers: headers,
    }
    render json: data
  end
end
