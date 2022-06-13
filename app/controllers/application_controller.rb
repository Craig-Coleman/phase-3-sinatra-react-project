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
    list = List.find(params[:id])
    list.to_json(include: :items)
  end

  get "/items" do 
    items = Item.all 
    items.to_json 
  end

end
