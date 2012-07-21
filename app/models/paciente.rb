class Paciente < ActiveRecord::Base

belongs_to :estado
belongs_to :estado_civil
has_many :consultas
has_many :resultados_exames
has_many :exames_fisicos

SITUACOES_PROFISSIONAIS = ["Aposentado", "Desempregado", "Parado"]

validates :nome, :presence => true
validates :sexo, :presence => true

	def idade
		(Date.today.year.to_i - self.data_nascimento.year.to_i).to_s
	end
end

#COMANDOS DE CRIACAO DE TABELAS:
#rails g model exame_fisico paciente_id:integer data:date ectoscopia:string aparelho_respiratorio:string aparelho_cardiaco:string abdomem:string punho_percussao:string pulsos_perifericos:string pele:string peso:float altura:float conduta:text
#rails g model acompanhamento paciente_id:integer data:date queixas:text medicacao:text pa:float peso:float aparelho_cardiaco:string mmiis:string