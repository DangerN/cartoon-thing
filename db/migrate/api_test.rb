require "RestClient"
require "JSON"

url = "https://rickandmortyapi.com/api/character/"
   response = RestClient.get(url)
   data = JSON.parse(response)
   data = data["results"]

   data.each do |character|
     puts character["name"]
   end
