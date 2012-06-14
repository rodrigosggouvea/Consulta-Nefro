class AddSexoToPacientes < ActiveRecord::Migration
  def change
    add_column :pacientes, :sexo, :char
  end
end
