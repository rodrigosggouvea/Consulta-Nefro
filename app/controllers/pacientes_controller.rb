class PacientesController < ApplicationController

  before_filter :carregar_paciente, :only => [:show, :edit, :destroy, :update]
  before_filter :carregar_estados, :only => [:new, :edit, :create, :update]
  before_filter :carregar_estados_civis, :only => [:new, :edit, :create, :update]
  before_filter :carregar_situacoes_profissionais, :only => [:new, :edit, :create, :update]

  def index
    @pacientes = Paciente.all
  end

  def show
  end

  def new
    @paciente = Paciente.new
    @consulta = Consulta.new(:paciente => @paciente, :medico => current_medico)
    @resultado_exames = ResultadoExames.new(:paciente => @paciente)
    @exame_fisico = ExameFisico.new(:paciente => @paciente)
  end

  def edit
  end

  def create
    binding.pry
    @paciente = Paciente.new(params[:paciente])
      if @paciente.save
        redirect_to pacientes_path, notice: 'Paciente criado com sucesso!'
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
    @paciente.destroy
    redirect_to pacientes_path, notice: 'Paciente apagado.'
  end

  def new_acompanhamento
    @paciente = Paciente.find(params[:paciente_id])
    @acompanhamento = Acompanhamento.new(:paciente_id => params[:paciente_id])
    @ultimo_acompanhamento = @paciente.ultimo_acompanhamento
  end

  def create_acompanhamento
    @acompanhamento = Acompanhamento.new(params[:acompanhamento])
    if @acompanhamento.save
      redirect_to pacientes_path, notice: 'Acompanhamento salvo!'
    else
      render action: "new_acompanhamento"
    end
  end

  def new_resultado_exames
    @paciente = Paciente.find(params[:paciente_id])
    @resultados_exames = @paciente.resultados_exames
    @resultado_exames = ResultadoExames.new(:paciente => @paciente)
  end

  def create_resultado_exames
    @resultado_exames = ResultadoExames.new(params[:resultado_exames])
    if @resultado_exames.save
      redirect_to pacientes_path, notice: 'Exames salvos!'
    else
      render action: "new_resultado_exames"
    end
  end

  private
    
  def carregar_paciente
    @paciente = Paciente.find(params[:id])
  end

  def carregar_estados
    @estados = Estado.all.collect{|e| ["#{e.sigla} - #{e.nome}",e.id]}
  end
  
  def carregar_estados_civis
    @estados_civis = EstadoCivil.all.collect{|e| [e.nome,e.id]}
  end

  def carregar_situacoes_profissionais
    @situacoes_profissionais = Paciente::SITUACOES_PROFISSIONAIS
  end
end
