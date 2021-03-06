class SchoolClassesController < ApplicationController 
    #binding.pry
    def new 
        @school_class = SchoolClass.new
    end

    def show 
        @school_class = SchoolClass.find(params[:id])
    end

    def create 
        @school_class = SchoolClass.new(params.require(:school_class))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end 

    def update 
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(params.require(:school_class))
        redirect_to school_class_path(@school_class)
    end

    private 

    def school_classes_params(*args)
        params.require(:school_class).permit(*args)
    end 
end