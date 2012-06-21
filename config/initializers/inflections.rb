# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
 ActiveSupport::Inflector.inflections do |inflect|
   inflect.irregular 'estado_civil', 'estados_civis'
   inflect.irregular 'consulta', 'consultas'
   inflect.irregular 'resultado_exames', 'resultados_exames'
 end

# colunas de resultados_exames
#  hematocto:integer hemoglobina:integer glicose:integer hemoglibina_glicosada:integer ureia:integer creatinina:integer sodio:integer potassio:integer calcio:integer fosforo:integer albumina:integer acido_urico:integer colesterol:integer hdl:integer ldl:integer trigliceridios:integer volume:integer clearance:integer proteinuria:integer uct:integer eas:integer