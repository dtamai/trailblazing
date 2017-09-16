class HelloController < ApplicationController
  def show
    render json: { message: 'Hello, world!' }
  end
end
