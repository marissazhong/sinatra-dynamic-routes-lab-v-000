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

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    # @result = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
end
