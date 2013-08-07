
get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/log_in' do 
  p @user = User.find_by_email(params[:email])
  if User.authenticate(params[:email], params[:password])
    session[:id] = @user.id
    redirect '/user_page'
  else
    redirect '/'
  end
end

get '/sign_up' do 

  erb :sign_up
end

post '/sign_up' do 
  User.create(params)

  erb :index
end

get '/user_page' do
  p session[:id]
  if session[:id] != nil
    erb :user_page
  else
    redirect '/'
  end
end

get '/log_out' do
  session.clear
  p session[:id]
  redirect '/'
end