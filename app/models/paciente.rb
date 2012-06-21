class Paciente < ActiveRecord::Base

belongs_to :estado
belongs_to :estado_civil
has_many :consultas
has_many :resultados_exames

SITUACOES_PROFISSIONAIS = ["Aposentado", "Desempregado", "Parado"]

validates :nome, :presence => true
validates :sexo, :presence => true

	def idade
		(Date.today.year.to_i - self.data_nascimento.year.to_i).to_s
	end
end
