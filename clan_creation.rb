class ClanCreation < Shoes

  url '/clan_creation', :render

  def render
    background("pictures/creation_clan.jpg")
    border("#000000", strokewidth: 5)
    title("Clan Name", align: "left", font: "Starcraft", margin: 10)
    
    stack(margin: 20) do
      flow(margin: 20) do
        @clanname = edit_line
        para(
          link("Save and Continue", left: 210, stroke: black, underline: false) do
            Main.instance.clan = Clan.new(@clanname.text)
            visit '/intro'
          end
          )
      end
      flow() do
        para(
          link("Back",width: 60, height: 30, stroke: black, underline: false) do
            visit '/'
          end
        )
      end
    end 
  end
end
