class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.date :data_nascimento
      t.integer :naturalidade
      t.text :endereco
      t.integer :estado_civil_id
      t.integer :num_filhos
      t.integer :num_partos
      t.integer :num_abortos
      t.string :profissao
      t.string :situacao_profissional
      t.string :nome_familiar
      t.string :telefone_familiar

      t.timestamps
    end
  end
end
