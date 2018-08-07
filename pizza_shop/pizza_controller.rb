require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative('./models/pizza_order')
also_reload('./models/*')

# INDEX
get '/pizza-orders' do
  @orders = PizzaOrder.all()
  erb(:index)
end

# NEW
get '/pizza-orders/new' do
  erb(:new)
end

# SHOW
get '/pizza-orders/:id' do
  @order = PizzaOrder.find(params[:id])
  erb(:show)
end
