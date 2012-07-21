class CreateExamesFisicos < ActiveRecord::Migration
  def change
    create_table :exames_fisicos do |t|
      t.integer :paciente_id
      t.date :data
      t.string :ectoscopia
      t.string :aparelho_respiratorio
      t.string :aparelho_cardiaco
      t.string :abdomem
      t.string :punho_percussao
      t.string :pulsos_perifericos
      t.string :pele
      t.float :peso
      t.float :altura
      t.text :conduta

      t.timestamps
    end
  end
end
