# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

#Capital
Capital.create([{:montante_real => 0, :montante_aplicado => 0}])

#SituacaoCheque
SituacaoCheque.create([{:nome => 'Aberto'}, {:nome => 'Compensado'}, {:nome => 'Postergado'}])

#TipoDespesa
TipoDespesa.create([{:nome => 'Societaria - Relativa ao percentual do sócio'}, {:nome => 'Fixa - Dividida igualmente entre os sócios'}])

#Banco
Banco.create([{:nome => 'Banco do Brasil', :codigo => '001'}])

#Cliente
Cliente.create([{:nome => 'Cliente da Silva'}])

#Emitente
Emitente.create([{:nome => 'Emitente da Silva'}])

#TipoOperacaoFinanceira
TipoOperacaoFinanceira.create([{:nome => 'Troca de cheque'}])

#Socio
Socio.create([{:nome => 'Sócio da Silva', :cpf => '03674090112', :senha => '12345678', :capital => 10000}])

#Capital
Capital.create([{:montante_aplicado => 0, :montante_real => 0}])

#TipoJuros
TipoJuro.create([{:nome => 'Simples'}, {:nome => 'Composto'}])

#SituacaoItem
SituacaoItem.create([{:nome => 'Pendente'}, {:nome => 'Pago'}])



