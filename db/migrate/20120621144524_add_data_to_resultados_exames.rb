class AddDataToResultadosExames < ActiveRecord::Migration
  def change
    add_column :resultados_exames, :data, :date
  end
end
