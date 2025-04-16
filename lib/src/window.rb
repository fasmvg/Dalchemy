module Dalchemy
  class Window
    def initialize(title:, width:, height:, &block)
      @window = Gtk::Window.new
      @window.set_title(title)
      @window.set_default_size(width, height)
      @window.signal_connect("destroy") { Gtk.main_quit }

      @fixed = Gtk::Fixed.new
      @window.add(@fixed)

      instance_eval(&block) if block_given?

      @window.show_all
    end

    def label(text, x:, y:)
      Dalchemy::Label.new(@fixed, text, x, y)
    end

    def button(text, x:, y:, &block)
      Dalchemy::Button.new(@fixed, text, x, y, &block)
    end

    def add(widget)
      @fixed.put(widget, 0, 0)
    end
  end
end
