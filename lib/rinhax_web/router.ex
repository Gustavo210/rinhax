defmodule RinhaxWeb.Router do
  use RinhaxWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RinhaxWeb do
    pipe_through :api

    get "/hello", Hello, :index

    # request body{
    #     "valor": 1000,
    #     "tipo" : "c",
    #     "descricao" : "descricao"
    # }
    #   response body{
    #     "limite" : 100000,
    #     "saldo" : -9098
    # }
    post "/clientes/:id/transacoes", TransacoesController, :create

    # response body{
    #   "saldo": {
    #     "total": -9098,
    #     "data_extrato": "2024-01-17T02:34:41.217753Z",
    #     "limite": 100000
    #   },
    #   "ultimas_transacoes": [
    #     {
    #       "valor": 10,
    #       "tipo": "c",
    #       "descricao": "descricao",
    #       "realizada_em": "2024-01-17T02:34:38.543030Z"
    #     },
    #     {
    #       "valor": 90000,
    #       "tipo": "d",
    #       "descricao": "descricao",
    #       "realizada_em": "2024-01-17T02:34:38.543030Z"
    #     }
    #   ]
    # }
    get "/clientes/:id/extrato", ExtratoController, :show
  end
end
