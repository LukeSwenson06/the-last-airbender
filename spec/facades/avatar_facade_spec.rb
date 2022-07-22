require 'rails_helper'

RSpec.describe 'AvatarFacade' do

  it "makes service call and returns an array of avatar objects" do
    avatar = AvatarFacade.nation_members("Fire+Nation")

    expect(avatar).to be_a Array
    expect(avatar).to be_all Avatar
  end
end
