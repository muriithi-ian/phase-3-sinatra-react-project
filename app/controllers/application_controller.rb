class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/books" do
    books = Book.all
    books.to_json
  end

  get '/books/:id' do
    book = Book.find(params[:id])
    book.to_json
  end

  delete '/books/:id' do
    book = Book.find(params[:id])
    book.destroy
    book.to_json
  end

  post '/books' do
    book = Book.create(
      title:params[:title],
      author:params[:author], 
      description:params[:description],
      category_id:params[:category_id], 
      image:params[:image], 
      available:params[:available]
    )
    book.to_json
  end

  patch '/books/:id' do
    book = Book.find(params[:id])
    book.update(
      available: params[:available]
    )
    book.to_json
  end

  post '/login' do
    member = Member.find_by(username: params[:username], password: params[:password])
    if member
      member.to_json
    else
      {error: "Invalid username or password"}.to_json
    end
  end

 

end
