class CreateResultadosExames < ActiveRecord::Migration
  def change
    create_table :resultados_exames do |t|
      t.integer :hematocto
      t.integer :hemoglobina
      t.integer :glicose
      t.integer :hemoglibina_glicosada
      t.integer :ureia
      t.integer :creatinina
      t.integer :sodio
      t.integer :potassio
      t.integer :calcio
      t.integer :fosforo
      t.integer :albumina
      t.integer :acido_urico
      t.integer :colesterol
      t.integer :hdl
      t.integer :ldl
      t.integer :trigliceridios
      t.integer :volume
      t.integer :clearance
      t.integer :proteinuria
      t.integer :uct
      t.integer :eas

      t.timestamps
    end
  end
end
