class ConsultasController < ApplicationController


  def index
    @consulta = Consulta.all
  end

  def show
    @consulta = Consulta.find(params[:id])
  end

  def new
    @consulta = Consulta.new
  end

  def edit
    @consulta = Consulta.find(params[:id])
  end

  def create
    @consulta = Consulta.new(params[:Consulta])

    respond_to do |format|
      if @consulta.save
        format.html { redirect_to @consulta, notice: 'Consulta was successfully created.' }
        format.json { render json: @consulta, status: :created, location: @consulta }
      else
        format.html { render action: "new" }
        format.json { render json: @consulta.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @consulta = Consulta.find(params[:id])

    respond_to do |format|
      if @consulta.update_attributes(params[:Consulta])
        format.html { redirect_to @consulta, notice: 'Consulta was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @consulta.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @consulta = Consulta.find(params[:id])
    @consulta.destroy
  end
end
