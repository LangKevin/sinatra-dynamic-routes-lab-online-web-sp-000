require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/goodbye/:name" do
      @user_name = params[:name]
      "Goodbye, #{@user_name}."
    end

    get "/multiply/:num1/:num2" do
      @num1 = params[:num1].to_i
      @num2 = params[:num2].to_i
      # @num1 * @num2
       "#{@num1 * @num2}"
    end
end
