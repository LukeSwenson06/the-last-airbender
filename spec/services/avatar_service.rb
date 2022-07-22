require 'rails_helper'

RSpec.describe 'AvatarService' do
  it "retrieves data and parses response" do
    parsed_json = AvatarService.get_nation_members('Fire+Nation')

    expect(parsed_json).to be_a Array
    nation  = parsed_json.first

    expect(nation).to include :_id, :allies, :enemies, :photoUrl, :name, :affiliation
    expect(nation[:_id]).to be_a(String)
    expect(nation[:allies]).to be_a(Array)
    expect(nation[:enemies]).to be_a(Array)
    expect(nation[:photoUrl]).to be_a(String)
    expect(nation[:name]).to be_a(String)
  end
end
