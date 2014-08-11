class Options < Shoes
  url '/options', :render

  def render
    background("pictures/menu_b.jpg")
    border("#000000", strokewidth: 5)
    title("Options", align: "left", font: "Starcraft", margin: 20, size: 78)
    flow(margin: 20) do
      para(
      link("Back", size: 50, stroke: black, underline: false) do
        visit '/'
      end
      )
    end
  end
end
