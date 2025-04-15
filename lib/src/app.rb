module Dalchemy
  class App
    def self.run(&block)
      Gtk.init
      block.call
      Gtk.main
    end
  end
end
