defmodule AbcWeb.Router do
  use AbcWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    #plug :assign_welcome_message
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" , AbcWeb do
    pipe_through :browser  #here we can give other customized or our written pipelines in a list

    get "/", PageController, :index
    #get "/touseef", AbcController, :redirect_test, as: :redirect_test             #router for redirection within project
    #get "/touseef", AbcController, :index                                         #router for redirection without project

#    get "/abc", AbcController, :index
    #get "/abc/:messenger", AbcController, :show

    #resources "/users", UserController
    #resources "/users", UserController do
    #  resources "/posts", PostController
    #end
    #Pending taskk, print ID on header of a specific user selected through a button


#    get "/test", AbcController, :test
     resources "/abc", AbcController
#    resources "/abc/:value", AbcController
#    resources "/reviews", ReviewController


  end


  scope "/admin", as: :admin do
    resources "/reviews", AbcWeb.Admin.ReviewController
    resources "/images",  AbcWeb.Admin.ImageController
    resources "/users",   AbcWeb.Admin.UserController
  end



  #forward "/jobs", BackgroundJob.Plug, name: "Hello Phoenix"    #farward
  # Other scopes may use custom stacks.
  # scope "/api", AbcWeb do
  #   pipe_through :api
  # end
end
