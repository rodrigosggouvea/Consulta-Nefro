class Paciente < ActiveRecord::Base

SITUACOES_PROFISSIONAIS = ["Aposentado", "Desempregado", "Parado"]

	def idade
		(Date.today.year.to_i - self.data_nascimento.to_i).to_s
	end
end
