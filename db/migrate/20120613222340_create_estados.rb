class CreateEstados < ActiveRecord::Migration
  def self.up
    create_table :estados do |t|
      t.string :nome
      t.string :sigla

      t.timestamps
    end
		Estado.create!(:nome => "Acre", :sigla => "AC")
		Estado.create!(:nome => "Alagoas", :sigla => "AL")
		Estado.create!(:nome => "Amapa", :sigla => "AP")
		Estado.create!(:nome => "Amazonas", :sigla => "AM")
		Estado.create!(:nome => "Bahia ", :sigla => "BA")
		Estado.create!(:nome => "Ceara", :sigla => "CE")
		Estado.create!(:nome => "Distrito Federal ", :sigla => "DF")
		Estado.create!(:nome => "Espirito Santo", :sigla => "ES")
		Estado.create!(:nome => "Goias", :sigla => "GO")
		Estado.create!(:nome => "Maranhao", :sigla => "MA")
		Estado.create!(:nome => "Mato Grosso", :sigla => "MT")
		Estado.create!(:nome => "Mato Grosso do Sul", :sigla => "MS")
		Estado.create!(:nome => "Minas Gerais", :sigla => "MG")
		Estado.create!(:nome => "Para", :sigla => "PA")
		Estado.create!(:nome => "Paraiba", :sigla => "PB")
		Estado.create!(:nome => "Parana", :sigla => "PR")
		Estado.create!(:nome => "Pernambuco", :sigla => "PE")
		Estado.create!(:nome => "Piaui", :sigla => "PI")
		Estado.create!(:nome => "Rio de Janeiro", :sigla => "RJ")
		Estado.create!(:nome => "Rio Grande do Norte", :sigla => "RN")
		Estado.create!(:nome => "Rio Grande do Sul", :sigla => "RS")
		Estado.create!(:nome => "Rondonia", :sigla => "RO")
		Estado.create!(:nome => "Roraima", :sigla => "RR")
		Estado.create!(:nome => "Santa Catarina", :sigla => "SC")
		Estado.create!(:nome => "Sao Paulo", :sigla => "SP")
		Estado.create!(:nome => "Sergipe", :sigla => "SE")
		Estado.create!(:nome => "Tocantins", :sigla => "TO")
  end

  def self.down
  	drop_table :estados
  end
end
