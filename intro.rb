class Intro < Shoes
  
  url '/intro', :render

  def render
    window(title: "#Yolo" , fullscreen: true) do
      background("pictures/villa.jpg")
      border("#000000", strokewidth: 5)
      title("Clan #{Main.instance.clan.name}", align: "left", font: "Starcraft", margin: 10)
      
      @intro_chat1 = stack(bottom: 5, left: 5, width: 800, height: 120) do
        background("#151515", curve: 12)
        border(black, strokewidth: 5, curve: 12)
        para("You wake up with the call of one of your people: The shaman wants to see ya!", size: 22, stroke: white)
        para(
          link("-Go to the shaman's tent", stroke: white, underline: false).click do
            @intro_chat1.clear
            background("pictures/interior_hut.jpg")
            stack(bottom: 225, left: 10) do
              flow do
                oval(fill: "pictures/shaman.jpg", radius: 100)
                @intro_chat2 = stack(width: 800, height: 120, bottom: 385, left: 225) do
                  background("#151515", curve: 12)
                  border(black, strokewidth: 5, curve: 12)
                  para("Son, I've seen the future in the fire... There's something dark aproaching and you're the only one who can help us stop it", size: 22, stroke: white)
                  para(
                    link("-Continue", stroke: white, underline: false).click do
                      @intro_chat2.clear
                      flow do
                        @intro_chat3 = stack(width: 800, height: 120, bottom: 385, left: 225) do
                          background("#151515", curve: 12)
                          border(black, strokewidth: 5, curve: 12)
                          para("The #{Main.instance.clan.name} Clan needs you... we have to run away while there is time!", size: 22, stroke: white)
                          para(
                            link("-Param #value #Yolo", stroke: white, underline: false) do
                              visit '/the_run_title'
                              close()
                            end
                          )
                        end
                      end
                    end
                  )
                end
              end
            end
          end
        )
      end
    end
  end
end