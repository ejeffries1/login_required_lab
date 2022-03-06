class SessionsController < ApplicationController
    
    def new
    end

    def create
        if session[:name].nil? || params[:name].empty?
            session[:name] = params[:name]
            redirect_to '/login' #controller: 'sessions', action: 'new'
        else
            redirect_to '/'
        end
    end

    def destroy
        if session[:name].present?
            session.delete :name
        end
            #redirect_to '/login'
    end
end