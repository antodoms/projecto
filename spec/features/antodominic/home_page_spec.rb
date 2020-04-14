describe "Home Page", :home_page do
  it "shows My Full Name" do
    visit "/"
    html = Sanitize.clean(page.body).gsub(/\s+/, " ").strip
    expect(html).to include("Anto Dominic")
  end

  it "has portfolio" do
    visit "/"
    html = Sanitize.clean(page.body).gsub(/\s+/, " ").strip
    expect(html).to include("Portfolio")
  end

  it "has About Me" do
    visit "/"
    html = Sanitize.clean(page.body).gsub(/\s+/, " ").strip
    expect(html).to include("About Me")
  end

  it "has Contact Us" do
    visit "/"
    html = Sanitize.clean(page.body).gsub(/\s+/, " ").strip
    expect(html).to include("Contact Me")
  end
end