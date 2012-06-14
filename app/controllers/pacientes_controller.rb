class PacientesController < ApplicationController

  before_filter :carregar_paciente, :only => [:show, :edit, :destroy, :update]
  before_filter :carregar_estados, :only => [:new, :edit, :create, :update]
  before_filter :carregar_estados_civis, :only => [:new, :edit, :create, :update]
  before_filter :carregar_situacoes_profissionais, :only => [:new, :edit, :create, :update]

  def index
    unless params[:search].blank?
      pesquisa = params[:search].gsub(' ','%')
      @pacientes = Paciente.where("nome LIKE '%pesquisa%'")
    end
    binding.pry
  end

  def show
  end

  def new
    @paciente = Paciente.new
  end

  def edit
  end

  def create
    @paciente = Paciente.new(params[:paciente])
      if @paciente.save
        redirect_to @paciente, notice: 'Paciente criado com sucesso!'
      else
        render action: "new" 
      end
  end

  def update
    if @paciente.update_attributes(params[:paciente])
      redirect_to @paciente, notice: 'Paciente Atualizado com sucesso!' 
    else
      render action: "edit" 
    end
  end

  def destroy
    @paciente = Paciente.find(params[:id])
    @paciente.destroy
    redirect_to pacientes_url
  end

  private

  def carregar_paciente
    @paciente = Paciente.find(params[:id])
  end

  def carregar_estados
    @estados = Estado.all.collect{|e| [e.sigla,e.id]}
  end
  
  def carregar_estados_civis
    @estados_civis = EstadoCivil.all.collect{|e| [e.nome,e.id]}
  end

  def carregar_situacoes_profissionais
    @situacoes_profissionais = Paciente::SITUACOES_PROFISSIONAIS
  end
end
