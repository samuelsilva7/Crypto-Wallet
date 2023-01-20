class ApplicationController < ActionController::Base
    before_action :set_lacale
    
    def set_lacale
       if params[:locale] 
         cookies[:locale] = params[:locale]
       end  
         if cookies[:locale]
            if I18n.locale != cookies[:locale]
              I18n.locale = cookies[:locale]
          end 
      end
    end
end
