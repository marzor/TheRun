class ClanCreation < Shoes

  url '/clan_creation', :render

  def render
    background("pictures/creation_clan.jpg")
    border("#000000", strokewidth: 5)
    title("Clan Name", align: "left", font: "Starcraft", margin: 10)
    
    stack(margin: 20) do
      flow do
        @clanname = edit_line 
        button("Save and Continue", left: 210).click do
          Main.instance.clan = Clan.new(@clanname.text)
          visit '/intro'
          close()
        end
      end
      button("Back",width: 60, height: 30).click do
        visit '/'
      end
    end 
  end
end
