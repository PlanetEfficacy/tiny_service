class CallbackController < ApplicationController
  def index
    @callback = Callback.all
  end

  def create
    Callback.create(request.raw_post)
  end

  # private
end
