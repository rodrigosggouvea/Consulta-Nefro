class CreateEstadosCivis < ActiveRecord::Migration
  def self.up
    create_table :estados_civis do |t|
      t.string :nome

      t.timestamps
    end
    EstadoCivil.create(:nome => "Solteiro(a)")
    EstadoCivil.create(:nome => "Casado(a)")
    EstadoCivil.create(:nome => "Divorciado(a)")
    EstadoCivil.create(:nome => "Viuvo(a)")
  end

  def self.down
  	drop_table :estados_civis
  end
end
