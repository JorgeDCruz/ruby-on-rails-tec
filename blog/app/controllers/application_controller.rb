class ApplicationController < ActionController::Base
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    def record_not_found
        flash[:error] = "Record not found"
        redirect_to root_path 
      end
end
