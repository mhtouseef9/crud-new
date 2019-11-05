defmodule AbcWeb.AbcController do
  use AbcWeb, :controller
 def index(conn, _params) do
 render(conn, "index.html")
  end
  def index(conn, id, _params) do
    render(conn, "show.html")
  end


#  def index(conn, _params) do
#    redirect(conn, to: "/touseef")
#  end
#  def redirect_test(conn, _params) do
#    text(conn, "Redirect!")
#  end

  def show(conn, %{"value" => messenger, "id"=> id}) do
    render(conn, "show.html", key: messenger, key1: id)
  end
  def show(conn, %{"id"=> id}) do
    render(conn, "show.html", key: id)
  end
    users= [
    Ahmad: %{"ID": 2, age: 34},
    Abbas: %{"ID": 3, age: 67},
    Ahfaq: %{"ID": 3, age: 67}
    ]
end
