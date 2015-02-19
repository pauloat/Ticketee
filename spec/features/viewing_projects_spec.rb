require "rails_helper"

RSpec.feature "Viewing projects" do
  scenario "Listing all projects" do
    project = FactoryGirl.create(:project, name: "Sublime 3")
    visit "/"
    click_link "Sublime 3"
    expect(page.current_url).to eql(project_url(project))
  end
end
