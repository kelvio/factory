class RelatoriosController < ApplicationController
  def operacoes
    @operacao_financeiras = OperacaoFinanceira.order('created_at asc')
  end
end
