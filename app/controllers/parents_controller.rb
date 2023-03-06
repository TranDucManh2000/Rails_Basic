class ParentsController < ApplicationController

    def index
        @parents ||= Parent.all
    end

    def edit
        
    end
    
end
