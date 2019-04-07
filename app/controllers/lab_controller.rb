# frozen_string_literal: true

class LabController < ApplicationController
  def delay
    time = Time.zone.now
    time = [time, time.to_datetime.strftime('%Q').last(3)].join '.'
    sleep params[:seconds]&.to_i || 1
    render plain: time
  end

  def env
    data = {
      request_id: request.request_id,
      request_start_time: Time.zone.at(request.env['HTTP_X_REQUEST_START'].to_i),
      heroku: request.env.slice('HTTP_CONNECT_TIME', 'HTTP_X_REQUEST_START', 'HTTP_TOTAL_ROUTE_TIME'),
      ENV: ENV.sort.to_h,
      headers: headers
    }
    render json: data
  end
end
