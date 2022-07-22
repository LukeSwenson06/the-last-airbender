class AvatarFacade
  def self.nation_members(nation)
    json = AvatarService.get_nation_members(nation)
    json.map do |member|
      Avatar.new(member)
    end
  end
end
