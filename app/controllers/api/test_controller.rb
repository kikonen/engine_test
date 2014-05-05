module Api
  class TestController < ApplicationController
    def create
      data = {
        id: params[:id],
        msg: 'created!',
        params: params,
      }
      render json: data, status: :created
    end

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
        msg: 'showed!',
        params: params,
      }
      render json: data
    end

    def update
      data = {
        id: params[:id],
        msg: 'updated!',
        params: params,
      }
      render json: data
    end

    def delete
      data = {
        id: params[:id],
        msg: 'deleted!',
        params: params,
      }
      render json: data, status: :gone
    end
  end
end
