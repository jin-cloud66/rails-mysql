class WelcomeController < ApplicationController
  def index
    @request_information = {
      request_remote_ip: request.remote_ip,
      request_ip: request.ip,
      request_remote_addr: request.remote_addr,
      request_env_http_x_forwarded_for: request.env['HTTP_X_FORWARDED_FOR'],
      request_env_http_x_real_ip: request.env['HTTP_X_REAL_IP'],
      request_env_remote_addr: request.env['REMOTE_ADDR'],
    }
  end
end
