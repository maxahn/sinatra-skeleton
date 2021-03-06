# Homepage (Root path)
get '/' do
  erb :index
end

get '/messages' do 
  @messages = Message.all 
  erb :'messages/index'
end

post '/messages' do
  @message = Message.new(
    title: params[:title],
    author: params[:author],
    content: params[:content]
  )
  if @message.save
    redirect '/messages'
  else
    erb :'messages/new'
  end

end

get '/messages/new' do
    erb :'messages/new'
end

get '/messages/:id' do 
  @message = Message.find params[:id]
  erb :'messages/show'
end


