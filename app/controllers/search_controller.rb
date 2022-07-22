class SearchController < ApplicationController
  def index
    @nation_members = AvatarFacade.nation_members(params[:nation])
    binding.pry
  end
end
