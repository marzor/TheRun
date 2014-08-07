class Menu < Shoes
  url '/', :render


  def render   
    background("pictures/menu_b.jpg")
    border("#000000", strokewidth: 5)
    title("Menu", align: "left", font: "Starcraft", margin: 20)
    stack(margin: 20) do
      flow do 
        button("Play", font: "Starcraft").click do
          visit '/clan_creation'
        end
      end
    end
    stack(margin: 20) do
      flow do  
        button("Options", font: "Starcraft").click do
          visit '/options'
        end
      end
    end
    stack(margin: 20) do
      flow do
        button("Exit", font: "Starcraft").click do
          exit()
        end
      end
    end
  end  
end