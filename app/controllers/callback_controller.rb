class CallbackController < ApplicationController

  def index
    @callback = Callback.all
  end

  def create
    Callback.create(json: request.raw_post)
  end

  # private
end
