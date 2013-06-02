require "sinatra"
require "sinatra/reloader"

get "/" do
	erb :index
end

get "/calc" do
	@first = params[:first].to_i
	@second = params[:last].to_i

	@operator = params[:operator]

	case @operator
	
	when "+"
		@result = @first + @second
	when "-"
		@result = @first - @second
	when "*"
		@result = @first * @second
	end

	erb :calc
end