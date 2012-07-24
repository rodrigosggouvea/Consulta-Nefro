class Paciente < ActiveRecord::Base

belongs_to :estado
belongs_to :estado_civil
has_many :consultas
has_many :resultados_exames, :class_name => "ResultadoExames"
has_many :exames_fisicos
has_many :acompanhamentos

accepts_nested_attributes_for :resultados_exames  

SITUACOES_PROFISSIONAIS = ["Aposentado", "Desempregado", "Parado"]

validates :nome, :presence => true
validates :sexo, :presence => true

	def idade
		(Date.today.year.to_i - self.data_nascimento.year.to_i).to_s
	end

	def ultimo_acompanhamento
		if acompanhamentos.any?
			return acompanhamentos.last
		else
			return false
		end
	end
end

#COMANDOS DE CRIACAO DE TABELAS:
#rails g model exame_fisico paciente_id:integer data:date ectoscopia:string aparelho_respiratorio:string aparelho_cardiaco:string abdomem:string punho_percussao:string pulsos_perifericos:string pele:string peso:float altura:float conduta:text
#rails g model acompanhamento paciente_id:integer data:date queixas:text medicacao:text pa:float peso:float aparelho_cardiaco:string mmiis:string