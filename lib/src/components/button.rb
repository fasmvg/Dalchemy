module Dalchemy
  class Button
    def initialize(parent, text, x, y, &block)
      button = Gtk::Button.new(label: text)
      button.signal_connect("clicked") { block.call if block }
      parent.put(button, x, y)
    end
  end
end
