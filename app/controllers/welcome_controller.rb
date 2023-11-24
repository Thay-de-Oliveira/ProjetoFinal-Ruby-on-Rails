class WelcomeController < ApplicationController
  def index
  
  #Guarda as informações 
  cookies[:teste_C] = "testando 1"

  session[:teste_S] = "testando 2"
  
  end

end
