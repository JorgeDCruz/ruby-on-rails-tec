require 'httparty'
class ApiService
    include HTTParty
    base_uri 'https://pokeapi.co/api/v2/' 
    
    def get_pokemon(pokemon)
      response = self.class.get('/endpoint/' + pokemon) 
      JSON.parse(response.body) 
    end
  end