class AddPacienteIdToResultadosExames < ActiveRecord::Migration
  def change
    add_column :resultados_exames, :paciente_id, :integer
  end
end
