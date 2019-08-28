require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
    get "/reversename/:name" do
      # @user_name = params[:name]
      # "Goodbye, #{@user_name}."
      @name = params[:name].reverse
      # "#{@name}"
    end

    get "/square/:num" do
      # @user_name = params[:name]
      # "Goodbye, #{@user_name}."
      val = params[:name].to_i
      val = val * 2
      val.to_s
      # "#{@val}"
    end

    get "/say/:number/:phrase" do

    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2' do
        val1 = params[:number1].to_i
        val2 = params[:number2].to_i
        case params[:operation]
        when 'add'
          tot = val1 + val2
        when 'subtract'
          tot = val1 - val2
        when 'multiply'
          tot = val1 * val2
        when 'divide'
          tot = val1 / val2
        end
        tot.to_s
      end

    get "/multiply/:num1/:num2" do
      @num1 = params[:num1].to_i
      @num2 = params[:num2].to_i
      # @num1 * @num2
       "#{@num1 * @num2}"
    end
end
