class Menu < Shoes
  url '/', :render


  def render   
    background("pictures/menu_b.jpg")
    border("#000000", strokewidth: 5)
    title("Menu", align: "left", font: "Starcraft", margin: 20, size: 78)
    stack(margin: 20) do
      flow(margin: 20) do 
        para(
        link("Play", size: 50, stroke: black, underline: false) do
          visit '/clan_creation'
        end
        )
      end
    end
    stack(margin: 20) do
      flow(margin: 20) do 
        para( 
          link("Options", size: 50, stroke: black, underline: false) do
            visit '/options'
        end
        )
      end
    end
    stack(margin: 20) do
      flow(margin: 20) do
        para(
          link("Exit", size: 50, stroke: black, underline: false) do
            exit()
        end
        )
      end
    end
  end  
end