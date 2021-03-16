require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "Hello World"
  end

  get '/reversename/:name' do
    #accepts a name and renders the name backwards.
    "#{params[:name].reverse}"
  end

  get '/square/:number/' do
    #number and returns the square of that number.
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    #repeat :phrase (:number).times
    "#{(params[:number].to_i).times do params[:phrase]}"
  end  

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #accepts five words and returns a string containing all five words 
    @joined_string = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    "#{@joined_string.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    #performs the operation on the two numbers provided, returning a String
    if params[:operation] == 'add'
      "#{params[:number1].to_i  + params[:number2].to_i}"
    elsif params[:operation] == 'subtract'
      "#{params[:number1].to_i  - params[:number2].to_i}"
    elsif params[:operation] == 'multiply'
      "#{params[:number1].to_i  * params[:number2].to_i}"
    elsif params[:operation] == 'divide'
      "#{params[:number1].to_i  / params[:number2].to_i}"
    end

  end

end