# require gems
require 'sinatra'
require 'sqlite3'

# get "/" do
#   name = params[:name]
#   age = params[:age]
#   if name && age
#     "<h1>Hello, #{name}! You are #{age} years old!</h1>"
#   else
#     "<h1>Hello, you!</h1>"
#   end
# end

get "/" do
  #http://localhost:9393/?name=waleeta&age=38
  #query parameters
    "<h1>Hello, #{params[:name]}! You are #{params[:age]} years old!</h1>"
end

get "/about/:person" do
  #route parameter
  #http://localhost:9393/about/waleeta
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end 

get "/:person1/loves/:person2" do
  #query parameter
  #http://localhost:9393/Matt/loves/Waleeta
  "#{params[:person1]} loves #{params[:person2]}."
end 


db = SQLite3::Database.new("students.db")
db.results_as_hash = true

get '/students' do
  students = db.execute("SELECT * FROM students")
    response = ""
    students.each do |student|  
      response << "<b>ID</b>: #{student['id']}<br>"
      response << "<b>Name</b>: #{student['name']}<br>"
      response << "<b>Age</b>: #{student['age']}<br>"
      response << "<b>Campus</b>: #{student['campus']}<br><br>"
    end
    response
end


get '/students/:id' do
  #http://localhost:9393/students/51
  #query parameter
  students = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  students.to_s
end

#CONTACT route
get '/contact' do 
  "Please contact us at: <br>
  PO Box 412<br>
  Chicago, IL <br><br>
  And give us a call at: <br>
  1-800-555-1234"
end 

#GREAT JOB route
get '/great_job' do 
  #http://localhost:9393/great_job?name=waleeta
  name = params[:name]
  if name
    "Good job #{name}!"
  else 
    "Great job!"
  end 
end 

#ADDS NUMBERS route:

get '/adds/:num1/:num2' do 
    # num1 = params[:num1.to_s]
    # num2 = params[:num2.to_s]
  "#{params[:num1].to_i + params[:num2].to_i}"

end 



