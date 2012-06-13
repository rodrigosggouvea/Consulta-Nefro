class PacientesController < ApplicationController

  def index
    binding.pry
    @pacientes = Paciente.where(:nome => params[:search])
  end

  def show
    @paciente = Paciente.find(params[:id])
  end

  def new
    @paciente = Paciente.new
  end

  def edit
    @paciente = Paciente.find(params[:id])
  end

  def create
    @paciente = Paciente.new(params[:paciente])
      if @paciente.save
        redirect_to @paciente, notice: 'Paciente was successfully created.'
      else
        render action: "new" 
      end
  end

def update
    @paciente = Paciente.find(params[:id])    
      if @paciente.update_attributes(params[:paciente])
        redirect_to @paciente, notice: 'Paciente was successfully updated.' 
      else
        render action: "edit" 
      end
  end

  def destroy
    @paciente = Paciente.find(params[:id])
    @paciente.destroy
    redirect_to pacientes_url
  end
end
