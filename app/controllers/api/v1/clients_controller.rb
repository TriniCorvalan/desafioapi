module Api
    module V1 
      class ClientsController < ActionController::API
        def by_name
          @client = Client.find_by(name: params[:name])
          render json: @client
        end
      end
    end
  end
