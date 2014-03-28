class SupportersController < ApplicationController

def index 
 @supporters=Supporter.all
  
end 

def new 
  @supporter = Supporter.new

end

def show
  @supporter = Supporter.find(params[:id])
 
end

def edit


end 




def create
 
@supporter = Supporter.new(params[:name])
@supporter.save

end

def destroy
  if @supporter.destroy
    redirect_to supporters_path, notice: "Question was deleted!"
  else 
    redirect_to supporters_path, error: "We had trouble deleting your message."
  end
end




end