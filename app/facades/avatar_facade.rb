class AvatarFacade
  def self.nation_members(nation)
    AvatarService.get_nation_members(nation)
  end
end
