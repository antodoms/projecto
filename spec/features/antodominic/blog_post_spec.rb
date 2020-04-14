describe "Blog Post", :blog_post do
  it "shows Blog post heading" do
    visit "/"
    click_on "Blog"
    html = Sanitize.clean(page.body).gsub(/\s+/, " ").strip
    expect(html).to include("Blog Posts")
  end

  it "has at least 1 blog post" do
    visit "/blog"
    first('.posts a').click

    page.current_path.should =~ /^\/blog\/[a-zA-Z0-9-]+\.html$/
  end
end