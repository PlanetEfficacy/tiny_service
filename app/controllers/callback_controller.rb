class CallbackController < ApplicationController

  def index
    @callback = Callback.all
  end

  def create
    byebug
    JSON.parse(request.raw_post)
    # Callback.create(json: )
  end

  # private
end
