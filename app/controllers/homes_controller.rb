class HomesController < ApplicationController  
  def index  
    @home = Home.all  
  end  

  def show  
    @home = Home.find(params[:id])  
  end  

  def new  
    @home = Home.new  
  end  

  def create  
    @home = Home.new(home_params)  
    if @home.save  
      redirect_to homes_path, notice: 'Se ha Creado Correctamente.'
    else  
      render :new  
    end  
  end  

  def edit  
    @home = Home.find(params[:id])  
  end  

  def update  
    @home = Home.find(params[:id])  
    if @home.update(home_params)  
      redirect_to homes_path, notice: 'Se ha Actualizado Correctamente.'
    else  
      render :edit  
    end  
  end  

  def destroy  
    @home = Home.find(params[:id])  
    @home.destroy  
    redirect_to homes_path, notice: 'Se ha Borrado Correctamente.' 
  end  

  private  

  def home_params  
    params.require(:home).permit(:nombre, :desc, :direccion)  
  end  
end  