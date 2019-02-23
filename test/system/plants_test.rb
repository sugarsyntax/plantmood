require "application_system_test_case"

class PlantsTest < ApplicationSystemTestCase
  setup do
    @plant = plants(:one)
  end

  test "visiting the index" do
    visit plants_url
    assert_selector "h1", text: "Plants"
  end

  test "creating a Plant" do
    visit plants_url
    click_on "New Plant"

    fill_in "Date", with: @plant.date
    fill_in "Location", with: @plant.location
    fill_in "Name", with: @plant.name
    fill_in "Picture", with: @plant.picture
    fill_in "Plant", with: @plant.plant
    fill_in "Type", with: @plant.type
    click_on "Create Plant"

    assert_text "Plant was successfully created"
    click_on "Back"
  end

  test "updating a Plant" do
    visit plants_url
    click_on "Edit", match: :first

    fill_in "Date", with: @plant.date
    fill_in "Location", with: @plant.location
    fill_in "Name", with: @plant.name
    fill_in "Picture", with: @plant.picture
    fill_in "Plant", with: @plant.plant
    fill_in "Type", with: @plant.type
    click_on "Update Plant"

    assert_text "Plant was successfully updated"
    click_on "Back"
  end

  test "destroying a Plant" do
    visit plants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plant was successfully destroyed"
  end
end
