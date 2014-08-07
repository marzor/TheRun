require "singleton"
require "menu"
require "clan_creation"
require "clan"
require "options"
require "intro"
require "the_run_title"

class Main

  include Singleton

  attr_accessor :clan


end

Shoes.app(title: "#Yolo", width: 500, height: 300)
