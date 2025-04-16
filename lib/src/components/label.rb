module Dalchemy
  class Label
    attr_reader :widget

    def initialize(text = "")
      @widget = Gtk::Label.new(text)
    end

    def set_text(new_text)
      @widget.set_label(new_text)
    end
  end
end
