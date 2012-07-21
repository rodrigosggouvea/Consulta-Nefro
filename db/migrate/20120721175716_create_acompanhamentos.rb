class CreateAcompanhamentos < ActiveRecord::Migration
  def change
    create_table :acompanhamentos do |t|
      t.integer :paciente_id
      t.date :data
      t.text :queixas
      t.text :medicacao
      t.float :pa
      t.float :peso
      t.string :aparelho_cardiaco
      t.string :mmiis

      t.timestamps
    end
  end
end
