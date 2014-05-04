module Api
  class TestController < ApplicationController
    def index
      data = (1..3).to_a.map do |i|
        {
          id: i,
          msg: "foo-#{i}",
        }
      end

      render json: data
    end

    def show
      data = {
        id: params[:id],
        msg: 'Moo!',
        params: params,
      }
      render json: data
    end
  end
end
