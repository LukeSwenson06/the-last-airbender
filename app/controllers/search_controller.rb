class SearchController < ApplicationController
  def index
    AvatarFacade.nation_members(params[:nation])
  end
end
