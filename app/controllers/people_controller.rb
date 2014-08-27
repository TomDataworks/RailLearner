class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  
  def show
    @guy = Person.find(params[:id])
  end
  
  def new
    @person = Person.new
  end
  
  def create
    @guy = Person.new(people_params)
    
    if @guy.save
      redirect_to people_path, :notice => "Save successfull"
    else
      render "new"
    end
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
  def people_params
    params.require(:person).permit(:firstname,:lastname)
  end
end
