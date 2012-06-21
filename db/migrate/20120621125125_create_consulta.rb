class CreateConsulta < ActiveRecord::Migration
  def change
    create_table :consultas do |t|
      t.integer :paciente_id
      t.integer :medico_id
      t.string :motivo
      t.text :hist_doenca_atual
      t.text :hist_doenca_regressa
      t.date :data
      t.boolean :diabetes
      t.boolean :hepatite
      t.boolean :transfusao_sanguinea
      t.boolean :tabagismo
      t.boolean :etilismo
      t.boolean :drogas_ilicitas
      t.boolean :fratura
      t.boolean :cirurgias
      t.boolean :tuberculose
      t.boolean :alergia
      t.boolean :intolerancia_alimentar
      t.boolean :pneumonia
      t.boolean :infeccao_urinaria
      t.boolean :nocturia
      t.boolean :disuria
      t.boolean :urina_espumosa
      t.boolean :rx_torax
      t.boolean :eco_cardiograma
      t.boolean :edcoscopia_digestiva
      t.boolean :eletro_cardiograma
      t.text :historico_familiar_pai
      t.text :historico_familiar_mae
      t.text :historico_familiar_irmaos
      t.boolean :doenca_renal_na_familia
      t.boolean :familiar_em_dialise
      t.text :medicacao_em_uso
      t.text :ultra_sonografia_rins
      t.integer :dosagem_25_hipoxi_vitamina_d
      t.integer :dosagem_ph_intacto

      t.timestamps
    end
  end
end
