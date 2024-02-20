require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)

end

get("/square/new") do
  

  erb(:square)
  
end

get("/square/results") do

  @number = params[:number].to_f
  @square_result = @number**2
  erb(:square_results)
  
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square/root") do

  @number = params[:number].to_f
  @square_root_result = Math.sqrt(@number)
  erb(:square_root_results)

end

get("/random/new") do
  erb(:random)
end

get("/random/results") do
  @min_number = params[:user_min].to_f
  @max_number = params[:user_max].to_f
  @random_number = rand(@min_number..@max_number)
  erb(:random_results)
end
get("/payment/new") do
end
