require_relative 'button'
require_relative 'label'

module Dalchemy
  class Grid
    attr_reader :widget

    def initialize
      @widget = Gtk::Grid.new
      @widget.row_spacing = 10
      @widget.column_spacing = 10
    end

    def build(&block)
      instance_eval(&block)
      self
    end

    def add_button(label, x, y, w = 1, h = 1, &block)
      btn = Dalchemy::Button.new(label)
      btn.on_click(&block) if block_given?
      @widget.attach(btn.widget, x, y, w, h)
      btn
    end

    def add_label(text, x, y, w = 1, h = 1)
      lbl = Dalchemy::Label.new(text)
      @widget.attach(lbl.widget, x, y, w, h)
      lbl
    end

    def show
      @widget.show_all
    end
  end
end
