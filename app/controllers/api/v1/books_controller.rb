module Api
  module V1
    class BooksController < ApplicationController
      def search
        result = BookSearch.call(params[:id])

        if result[:error_code]
          render json: { message: result[:msg] }, status: result[:error_code]
        else
          render json: result, serializer: BookSerializer
        end
      end
    end
  end
end
