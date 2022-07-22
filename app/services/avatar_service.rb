class AvatarService
  def self.get_nation_members(nation)
    connection = Faraday.new('https://last-airbender-api.herokuapp.com')
    response = connection.get("/api/v1/characters?affiliation#=#{nation}?perPage=25")
    JSON.parse(response.body, symbolize_names: true)
  end
end
