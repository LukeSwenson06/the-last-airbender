require 'rails_helper'

RSpec.describe Avatar do

  it "populates Avatar Nation members fields from JSON Response" do
    data = {
        allies: [
            "Ty Lee"
        ],
        enemies: [
            "Appa"
        ],
        photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
        name: "Circus master",
        affiliation: "Fire Nation circus"
    }

    avatar = Avatar.new(data)

    expect(avatar).to be_a Avatar
    expect(avatar.allies).to eq(["Ty Lee"])
    expect(avatar.enemies).to eq(["Appa"])
    expect(avatar.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
    expect(avatar.name).to eq("Circus master")
    expect(avatar.affiliation).to eq("Fire Nation circus")

  end

end
