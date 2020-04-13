describe "Home Page", :home_page do
  it "shows My Full Name" do
    visit "/"
    expect(page.body).to include("Anto Dominic")
  end

  it "has portfolio" do
    visit "/"
    expect(page.body).to include("Portfolio")
  end

  it "has About Me" do
    visit "/"
    expect(page.body).to include("About Me")
  end

  it "has Contact Us" do
    visit "/"
    expect(page.body).to include("Contact Me")
  end
end