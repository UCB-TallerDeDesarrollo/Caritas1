class MainPageController < ApplicationController
    def index
      render :action=>'index'  # Render a template from the say_hello action method
    end
   def info
      render :action=>'quienesSomos'  # Render a template from the say_hello action method
  end
end
