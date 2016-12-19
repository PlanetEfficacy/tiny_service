class CallbackController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @callback = Callback.all
  end

  def create
    Callback.create(json: request.raw_post)
  end

  # private
end
