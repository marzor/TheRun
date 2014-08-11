class TheRunTitle < Shoes
  
  url '/the_run_title', :render

  def render
    window(title: "#Yolo" , fullscreen: true) do
      background("pictures/menu_b.jpg")
      stack(top: 150, left: 250)do
        para(
          link(strong("The Run", font: "Starcraft", size: 120, stroke: black), underline: false) do
            exit()
        end
        )
      end
    end
  end
end