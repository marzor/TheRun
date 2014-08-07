class Options < Shoes
  url '/options', :render

  def render
    background("pictures/menu_b.jpg")
    border("#000000", strokewidth: 5)
    title("Options", align: "left", font: "Starcraft", margin: 20)
    flow(margin: 20) do
      button("Back").click do
        visit '/'
      end
    end
  end
end
