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
  ""
end

get("/payment/new") do
end
