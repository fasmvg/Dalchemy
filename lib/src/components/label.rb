module Dalchemy
  class Label
    attr_reader :widget

    def initialize(parent, text, x, y)
      @widget = Gtk::Label.new(text)
      parent.put(@widget, x, y)
    end

    def set_text(new_text)
      @widget.set_text(new_text)
    end
  end
end
