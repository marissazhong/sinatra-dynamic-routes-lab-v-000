require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse!}"
  end

  get "/square/:number" do
    @num = params[:number]
    "#{@num.to_i**2}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @result = ""
    @number.times do @result += @phrase end
    "#{@result}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5"
end
