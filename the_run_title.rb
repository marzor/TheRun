class TheRunTitle < Shoes
  
  url '/the_run_title', :render

  def render
    window(title: "#Yolo" , fullscreen: true) do
      background("pictures/menu_b.jpg")
    end
  end
end