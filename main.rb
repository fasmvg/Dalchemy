require_relative "lib/dalchemy"

Dalchemy::App.run do
  Dalchemy::Window.new(title: "Hello GUI", width: 400, height: 300) do
    click_count = 0
    label "Welcome!", x: 30, y: 30 
    click_label = label "Clicks: 0", x: 30, y: 150
    button "Click", x: 30, y: 80 do
      click_count += 1
      puts "You click #{click_count} times on the button"
      click_label.set_text("Clicks: #{click_count}")
    end
  end
end
