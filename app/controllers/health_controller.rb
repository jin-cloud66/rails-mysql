class HealthController < ApplicationController

  HEALTH_UNAVAILABLE_FOR = ENV.fetch("HEALTH_UNAVAILABLE_FOR", "10").to_i.seconds

  def health
    @@time_controller_first_hit ||= DateTime.now
    head 503, content_type: "text/html" if DateTime.now <= @@time_controller_first_hit + HEALTH_UNAVAILABLE_FOR
    head :ok, content_type: "text/html"
  end

  def healthz
    head :ok, content_type: "text/html"
  end
end
