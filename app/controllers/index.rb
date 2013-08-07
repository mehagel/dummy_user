get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do 
  User.authenticate(params[:email], params[:password])
end
