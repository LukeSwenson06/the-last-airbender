class AvatarService
  def self.get_nation_members(nation)
    connection = Faraday.new('https://last-airbender-api.herokuapp.com')
    response = connection.get("/api/v1/characters?affiliation=#{nation}") do |faraday|
      faraday.params['perPage'] = 25
      faraday.params['page'] = 1
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
