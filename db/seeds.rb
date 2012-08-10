# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

#Pais
PaisDominio.create([{:nome => 'Brasil'}])

#Uf
Uf.create([{:nome => 'Brasília', :pais_dominio => PaisDominio.find(1)}])

#Município
MunicipioDominio.create([{:nome => 'Brasília', :uf => Uf.find(1)}])

#TipoCliente
TipoCliente.create([{:nome => 'Pessoa Física'}, {:nome => 'Pessoa Jurídica'}])

#Capital
Capital.create([{:montante_real => 0, :montante_aplicado => 0}])

#SituacaoCheque
SituacaoCheque.create([{:nome => 'Aberto'}, {:nome => 'Compensado'}, {:nome => 'Postergado'}])

#TipoDespesa
TipoDespesa.create([{:nome => 'Societaria - Relativa ao percentual'}, {:nome => 'Fixa - Dividida igualmente'}])

#Banco
Banco.create([{:nome => 'Banco ABC Brasil S.A', :codigo => '246', :site => 'www.abcbrasil.com.br'}])
Banco.create([{:nome => 'Banco Alfa S.A', :codigo => '25', :site => 'www.bancoalfa.com.br'}])
Banco.create([{:nome => 'Banco Alvorada S.A', :codigo => '641', :site => 'Não possui site.'}])
Banco.create([{:nome => 'Banco Banerj S.A', :codigo => '29', :site => 'www.banerj.com.br'}])
Banco.create([{:nome => 'Banco Bankpar S.A', :codigo => '0', :site => 'www.aexp.com'}])
Banco.create([{:nome => 'Banco Banclays S.A', :codigo => '740', :site => 'www.barclays.com'}])
Banco.create([{:nome => 'Banco BBM S.A', :codigo => '107', :site => 'www.bbmbank.com.br'}])
Banco.create([{:nome => 'Banco Geg S.A', :codigo => '31', :site => 'www.itau.com.br'}])
Banco.create([{:nome => 'Banco BGN S.A', :codigo => '739', :site => 'www.bgn.com.br'}])
Banco.create([{:nome => 'Banco BM&F de Serviços de Liquidação e Custódia S.A', :codigo => '96', :site => 'www.bmf.com.br'}])
Banco.create([{:nome => 'Banco BGM S.A', :codigo => '318', :site => 'www.bancobmg.com.br'}])
Banco.create([{:nome => 'Banco BNP Paribas Brasil S.A.', :codigo => '752', :site => 'www.bnpparibas.com.br'}])
Banco.create([{:nome => 'Banco Boavista Interatlântico S.A.', :codigo => '248', :site => 'não possui site'}])
Banco.create([{:nome => 'Banco Bonsucesso S.A.', :codigo => '218', :site => 'www.bancobonsucesso.com.br'}])
Banco.create([{:nome => 'Banco Bracce S.A.', :codigo => '65', :site => 'www.bancobracce.com.br'}])
Banco.create([{:nome => 'Banco Bradesco BBI S.A.', :codigo => '36', :site => 'Não possui site'}])
Banco.create([{:nome => 'Banco Bradesco Cartões S.A.', :codigo => '204', :site => 'www.iamex.com.br'}])
Banco.create([{:nome => 'Banco Bradesco Financiamentos S.A.', :codigo => '394', :site => 'www.bmc.com.br'}])
Banco.create([{:nome => 'Banco Bradesco S.A.', :codigo => '237', :site => 'www.bradesco.com.br'}])
Banco.create([{:nome => 'Banco Brascan S.A.', :codigo => '225', :site => 'www.bancobrascan.com.br'}])
Banco.create([{:nome => 'Banco BTG Pactual S.A.', :codigo => '208', :site => 'www.pactual.com.br'}])
Banco.create([{:nome => 'Banco BVA S.A.', :codigo => '44', :site => 'www.bancobva.com.br'}])
Banco.create([{:nome => 'Banco Cacique S.A.', :codigo => '263', :site => 'www.bancocacique.com.br'}])
Banco.create([{:nome => 'Banco Caixa Geral - Brasil S.A.', :codigo => '473', :site => 'Não possui site'}])
Banco.create([{:nome => 'Banco Cargill S.A.', :codigo => '40', :site => 'www.bancocargill.com.br'}])
Banco.create([{:nome => 'Banco Cifra S.A.', :codigo => '233', :site => 'www.bancocifra.com.br'}])
Banco.create([{:nome => 'Banco Citibank S.A.', :codigo => '745', :site => 'www.citibank.com.br'}])
Banco.create([{:nome => 'Banco Citicard S.A.', :codigo => 'M08', :site => 'www.credicardbanco.com.br'}])
Banco.create([{:nome => 'Banco CNH Capital S.A.', :codigo => 'M19', :site => 'www.bancocnh.com.br'}])
Banco.create([{:nome => 'Banco Comercial e de Investimento Sudameris S.A.', :codigo => '215', :site => 'www.sudameris.com.br'}])
Banco.create([{:nome => 'Banco Confidence de Câmbio S.A.', :codigo => '95', :site => 'www.bancoconfidence.com.br'}])
Banco.create([{:nome => 'Banco Cooperativo do Brasil S.A. - BANCOOB', :codigo => '756', :site => 'www.bancoob.com.br'}])
Banco.create([{:nome => 'Banco Cooperativo Sicredi S.A.', :codigo => '748', :site => 'www.sicredi.com.br'}])
Banco.create([{:nome => 'Banco Credit Agricole Brasil S.A.', :codigo => '222', :site => 'www.calyon.com.br'}])
Banco.create([{:nome => 'Banco Credit Suisse (Brasil) S.A.', :codigo => '505', :site => 'www.csfb.com'}])
Banco.create([{:nome => 'Banco Cruzeiro do Sul S.A.', :codigo => '229', :site => 'www.bcsul.com.br'}])
Banco.create([{:nome => 'Banco CSF S.A.', :codigo => '-', :site => 'Não possui site'}])
Banco.create([{:nome => 'Banco da Amazônia S.A.', :codigo => '3', :site => 'www.bancoamazonia.com.br'}])
Banco.create([{:nome => 'Banco da China Brasil S.A.', :codigo => '083-3', :site => 'Não possui site'}])
Banco.create([{:nome => 'Banco Daycoval S.A.', :codigo => '707', :site => 'www.daycoval.com.br'}])
Banco.create([{:nome => 'Banco de Lage Landen Brasil S.A.', :codigo => 'M06', :site => 'www.delagelanden.com'}])
Banco.create([{:nome => 'Banco de Pernambuco S.A. - BANDEPE', :codigo => '24', :site => 'www.bandepe.com.br'}])
Banco.create([{:nome => 'Banco de Tokyo-Mitsubishi UFJ Brasil S.A.', :codigo => '456', :site => 'www.btm.com.br'}])
Banco.create([{:nome => 'Banco Dibens S.A.', :codigo => '214', :site => 'www.bancodibens.com.br'}])
Banco.create([{:nome => 'Banco do Brasil S.A.', :codigo => '1', :site => 'www.bb.com.br'}])
Banco.create([{:nome => 'Banco do Estado de Sergipe S.A.', :codigo => '47', :site => 'www.banese.com.br'}])
Banco.create([{:nome => 'Banco do Estado do Pará S.A.', :codigo => '37', :site => 'www.banparanet.com.br'}])
Banco.create([{:nome => 'Banco do Estado do Rio Grande do Sul S.A.', :codigo => '41', :site => 'www.banrisul.com.br'}])
Banco.create([{:nome => 'Banco do Nordeste do Brasil S.A.', :codigo => '4', :site => 'www.banconordeste.gov.br'}])
Banco.create([{:nome => 'Banco Fator S.A.', :codigo => '265', :site => 'www.bancofator.com.br'}])
Banco.create([{:nome => 'Banco Fiat S.A.', :codigo => 'M03', :site => 'www.bancofiat.com.br'}])
Banco.create([{:nome => 'Banco Fibra S.A.', :codigo => '224', :site => 'www.bancofibra.com.br'}])
Banco.create([{:nome => 'Banco Ficsa S.A.', :codigo => '625', :site => 'www.ficsa.com.br'}])
Banco.create([{:nome => 'Banco Fidis S.A.', :codigo => '--', :site => 'www.bancofidis.com.br'}])
Banco.create([{:nome => 'Banco Finasa BMC S.A.', :codigo => '394', :site => 'www.bmc.com.br'}])
Banco.create([{:nome => 'Banco Ford S.A.', :codigo => 'M18', :site => 'www.bancoford.com.br'}])
Banco.create([{:nome => 'Banco GMAC S.A.', :codigo => 'M07', :site => 'www.bancogm.com.br'}])
Banco.create([{:nome => 'Banco Guanabara S.A.', :codigo => '612', :site => 'www.bcoguan.com.br'}])
Banco.create([{:nome => 'Banco Honda S.A.', :codigo => 'M22', :site => 'www.bancohonda.com.br'}])
Banco.create([{:nome => 'Banco Ibi S.A. Banco Múltiplo', :codigo => '63', :site => 'www.ibi.com.br'}])
Banco.create([{:nome => 'Banco IBM S.A.', :codigo => 'M11', :site => 'www.ibm.com/br/financing/'}])
Banco.create([{:nome => 'Banco Industrial do Brasil S.A.', :codigo => '604', :site => 'www.bancoindustrial.com.br'}])
Banco.create([{:nome => 'Banco Industrial e Comercial S.A.', :codigo => '320', :site => 'www.bicbanco.com.br'}])
Banco.create([{:nome => 'Banco Indusval S.A.', :codigo => '653', :site => 'www.indusval.com.br'}])
Banco.create([{:nome => 'Banco Investcred Unibanco S.A.', :codigo => '249', :site => 'Não possui site'}])
Banco.create([{:nome => 'Banco Itaú BBA S.A.', :codigo => '284', :site => 'www.itaubba.com.br'}])
Banco.create([{:nome => 'Banco ItaúBank S.A', :codigo => '479', :site => 'www.itaubank.com.br'}])
Banco.create([{:nome => 'Banco Itaucard S.A.', :codigo => '---', :site => 'Não possui site'}])
Banco.create([{:nome => 'Banco Itaucred Financiamentos S.A.', :codigo => 'M09', :site => 'www.itaucred.com.br'}])
Banco.create([{:nome => 'Banco J. P. Morgan S.A.', :codigo => '376', :site => 'www.jpmorgan.com'}])
Banco.create([{:nome => 'Banco J. Safra S.A.', :codigo => '74', :site => 'www.jsafra.com.br'}])
Banco.create([{:nome => 'Banco John Deere S.A.', :codigo => '217', :site => 'www.johndeere.com.br'}])
Banco.create([{:nome => 'Banco Luso Brasileiro S.A.', :codigo => '600', :site => 'www.lusobrasileiro.com.br'}])
Banco.create([{:nome => 'Banco Mercantil do Brasil S.A.', :codigo => '389', :site => 'www.mercantil.com.br'}])
Banco.create([{:nome => 'Banco Modal S.A.', :codigo => '746', :site => 'www.bancomodal.com.br'}])
Banco.create([{:nome => 'Banco Opportunity S.A.', :codigo => '45', :site => 'www.opportunity.com.br'}])
Banco.create([{:nome => 'Banco Original do Agronegócio S.A.', :codigo => '79', :site => 'www.bancooriginal.com.br'}])
Banco.create([{:nome => 'Banco Panamericano S.A.', :codigo => '623', :site => 'www.panamericano.com.'}])
Banco.create([{:nome => 'Banco Paulista S.A.', :codigo => '611', :site => 'www.bancopaulista.com.br'}])
Banco.create([{:nome => 'Banco Pine S.A.', :codigo => '643', :site => 'www.bancopine.com.br'}])
Banco.create([{:nome => 'Banco Prosper S.A', :codigo => '638', :site => 'www.bancoprosper.com.br'}])
Banco.create([{:nome => 'Banco Rabobank International Brasil S.A.', :codigo => '747', :site => 'www.rabobank.com.br'}])
Banco.create([{:nome => 'Banco Real S.A.', :codigo => '356', :site => 'www.bancoreal.com.br'}])
Banco.create([{:nome => 'Banco Rendimento S.A.', :codigo => '633', :site => 'www.rendimento.com.br'}])
Banco.create([{:nome => 'Banco Rodobens S.A.', :codigo => 'M16', :site => 'www.rodobens.com.br'}])
Banco.create([{:nome => 'Banco Rural Mais S.A.', :codigo => '72', :site => 'www.rural.com.br'}])
Banco.create([{:nome => 'Banco Rural S.A.', :codigo => '453', :site => 'www.rural.com.br'}])
Banco.create([{:nome => 'Banco Safra S.A.', :codigo => '422', :site => 'www.safra.com.br'}])
Banco.create([{:nome => 'Banco Santander (Brasil) S.A.', :codigo => '33', :site => 'www.santander.com.br'}])
Banco.create([{:nome => 'Banco Simples S.A.', :codigo => '749', :site => 'www.bancosimples.com.br'}])
Banco.create([{:nome => 'Banco Société Générale Brasil S.A.', :codigo => '366', :site => ''}])
Banco.create([{:nome => 'Banco Sofisa S.A.', :codigo => '637', :site => 'www.sgbrasil.com.br'}])
Banco.create([{:nome => 'Banco Standard de Investimentos S.A.', :codigo => '12', :site => 'www.sofisa.com.br'}])
Banco.create([{:nome => 'Banco Sumitomo Mitsui Brasileiro S.A.', :codigo => '464', :site => 'www.standardbank.com'}])
Banco.create([{:nome => 'Banco Topázio S.', :codigo => '082-5', :site => 'Não possui site'}])
Banco.create([{:nome => 'Banco Toyota do Brasil S.A.', :codigo => 'M20', :site => 'www.bancotopazio.com.br'}])
Banco.create([{:nome => 'Banco Triângulo S.', :codigo => '634', :site => 'www.bancotoyota.com.br'}])
Banco.create([{:nome => 'Banco Volkswagen S.A.', :codigo => 'M14', :site => 'www.tribanco.com.br'}])
Banco.create([{:nome => 'Banco Volvo (Brasil) S.', :codigo => 'M23', :site => 'www.bancovw.com.br'}])
Banco.create([{:nome => 'Banco Votorantim S.', :codigo => '655', :site => 'Não possui site'}])
Banco.create([{:nome => 'Banco VR S.A.', :codigo => '610', :site => 'www.bancovotorantim.com.br'}])
Banco.create([{:nome => 'Banco Western Union do Brasil S.A.', :codigo => '119', :site => 'Não possui site'}])
Banco.create([{:nome => 'Banco WestLB do Brasil S.A.', :codigo => '370', :site => 'www.westlb.com.br'}])
Banco.create([{:nome => 'Banco Yamaha Motor S.A.', :codigo => '----', :site => 'www.yamaha-motor.com.br'}])
Banco.create([{:nome => 'BANESTES S.A. Banco do Estado do Espírito Santo', :codigo => '21', :site => 'www.banestes.com.br'}])
Banco.create([{:nome => 'Banif-Banco Internacional do Funchal (Brasil)S.A.', :codigo => '719', :site => 'www.banif.com.br'}])
Banco.create([{:nome => 'Bank of America Merrill Lynch Banco Múltiplo S.A.', :codigo => '755', :site => 'www.ml.com'}])
Banco.create([{:nome => 'BB Banco Popular do Brasil S.A.', :codigo => '73', :site => 'www.bancopopulardobrasil.com.br'}])
Banco.create([{:nome => 'BCV - Banco de Crédito e Varejo S.A.', :codigo => '250', :site => 'www.bancobcv.com.br'}])
Banco.create([{:nome => 'BES Investimento do Brasil S.A.-Banco de Investimento', :codigo => '78', :site => 'www.besinvestimento.com.br'}])
Banco.create([{:nome => 'BPN Brasil Banco Múltiplo S.A.', :codigo => '69', :site => 'www.bpnbrasil.com.br'}])
Banco.create([{:nome => 'BRB - Banco de Brasília S.A.', :codigo => '70', :site => 'www.brb.com.br'}])
Banco.create([{:nome => 'Caixa Econômica Federal', :codigo => '104', :site => 'www.caixa.gov.br'}])
Banco.create([{:nome => 'Citibank S.A.', :codigo => '477', :site => 'www.citibank.com/brasil'}])
Banco.create([{:nome => 'Concórdia Banco S.', :codigo => '081-7', :site => 'www.concordiabanco.com'}])
Banco.create([{:nome => 'Deutsche Bank S.A. - Banco Alemão', :codigo => '487', :site => 'www.deutsche-bank.com.br'}])
Banco.create([{:nome => 'Goldman Sachs do Brasil Banco Múltiplo S.', :codigo => '64', :site => 'www.goldmansachs.com'}])
Banco.create([{:nome => 'Hipercard Banco Múltiplo S.A.', :codigo => '62', :site => 'www.hipercard.com.br'}])
Banco.create([{:nome => 'HSBC Bank Brasil S.A. - Banco Múltiplo', :codigo => '399', :site => 'www.hsbc.com.br'}])
Banco.create([{:nome => 'ING Bank N.V.', :codigo => '492', :site => 'www.ing.com'}])
Banco.create([{:nome => 'Itaú Unibanco Holding S.A.', :codigo => '652', :site => 'www.itau.com.br'}])
Banco.create([{:nome => 'Itaú Unibanco S.A.', :codigo => '341', :site => 'www.itau.com.br'}])
Banco.create([{:nome => 'JPMorgan Chase Bank', :codigo => '488', :site => 'www.jpmorganchase.com'}])
Banco.create([{:nome => 'Scotiabank Brasil S.A. Banco Múltiplo', :codigo => '517', :site => 'www.br.scotiabank.com'}])
Banco.create([{:nome => 'Standard Chartered Bank (Brasil) S/A–Bco Invest.', :codigo => '-----', :site => 'www.standardchartered.'}])
Banco.create([{:nome => 'UNIBANCO - União de Bancos Brasileiros S.A.', :codigo => '409', :site => 'www.unibanco.com.br'}])
Banco.create([{:nome => 'Unicard Banco Múltiplo S.A.', :codigo => '230', :site => 'www.unicard.com.br'}])


#Cliente
Cliente.create([{:nome => 'Cliente da Silva'}])

#Emitente
Emitente.create([{:nome => 'Emitente da Silva'}])

#TipoOperacaoFinanceira
TipoOperacaoFinanceira.create([{:nome => 'Troca de cheque'}, {:nome => 'Conta / Despesa'}])

#Socio
Socio.create([{:nome => 'Pessoa da Silva', :cpf => '03674090112', :senha => '12345678', :capital => 10000, :email => 'kelvio.matias@gmail.com'}])

#Capital
Capital.create([{:montante_aplicado => 0, :montante_real => 0}])

#TipoJuros
TipoJuro.create([{:nome => 'Simples'}, {:nome => 'Composto'}])

#SituacaoItem
SituacaoItem.create([{:nome => 'Pendente'}, {:nome => 'Pago'}])



