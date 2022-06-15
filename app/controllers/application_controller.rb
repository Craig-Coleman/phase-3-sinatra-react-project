class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    lists = List.all
    lists.to_json(include: :items)
  end

  get "/lists" do
    lists = List.all 
    lists.to_json 
  end

  get "/lists/:id" do
    list = List.find_by(id: params[:id])
    list.to_json(include: :items)
  end

  post "/lists/:list_id/items" do
    list = List.find_by(id: params[:list_id])
    item = list.items.create(
      name: params[:name],
      category: params[:category],
      price: params[:price],
    )
    item.to_json
  end

  post "/lists" do
    list = List.create(
      name: params[:name]
    )
    list.to_json 
  end

  patch "/lists/:id" do
    list = List.find_by(id: params[:id])
    list.update(
      name: params[:name]
    )
    list.to_json
  end

  patch "/lists/:list_id/items/:id" do
    item = Item.find_by(id: params[:id])
    item.update(
      name: params[:name],
      category: params[:category],
      price: params[:price]
    )
    item.to_json
  end

  delete "/lists/:list_id/items/:id" do
    item = Item.find_by(id: params[:id])
    item.destroy
    item.to_json 
  end

  delete "/lists/:id" do
    list = List.find_by(id: params[:id])
    list.destroy
    list.to_json
  end

end
