class SearchController < ApplicationController
  def index
    search = params[:nation].gsub('_','+')
    @nation_members = AvatarFacade.nation_members(search)
  end
end
