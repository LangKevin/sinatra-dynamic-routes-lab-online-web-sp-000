require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
    get "/reversename/:name" do
      # @user_name = params[:name]
      # "Goodbye, #{@user_name}."
      @name = params[:name].reverse
      "#{@name}"
    end

    get "/square/:num" do
      # @user_name = params[:name]
      # "Goodbye, #{@user_name}."
      @val = power(params[:name].to_i, 2)
      "#{@val}"
    end

    get "/say/:number/:phrase" do
      # @user_name = params[:name]
      # "Goodbye, #{@user_name}."
      @val = power(params[:name].to_i, 2)
      "#{@val}"
    end

    get "/multiply/:num1/:num2" do
      @num1 = params[:num1].to_i
      @num2 = params[:num2].to_i
      # @num1 * @num2
       "#{@num1 * @num2}"
    end
end
