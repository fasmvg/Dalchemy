module Dalchemy
  class Button
    attr_reader :widget

    def initialize(label)
      @widget = Gtk::Button.new(label: label)
    end

    def on_click(&block)
      @widget.signal_connect("clicked", &block)
    end
  end
end
