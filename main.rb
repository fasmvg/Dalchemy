require_relative "lib/dalchemy"

Dalchemy::App.run do
  Dalchemy::Window.new(title: "Test", width: 400, height: 200) do
    counter = 0
    label_ref = nil

    grid = Dalchemy::Grid.new.build do
      label_ref = add_label("Clicks: 0", 0, 0)
      add_button("Click!", 1, 0) do
        counter += 1
        label_ref.set_text("Clicks: #{counter}")
      end
    end

    add(grid.widget)
  end
end
