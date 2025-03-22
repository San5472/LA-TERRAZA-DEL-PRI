require "application_system_test_case"

class CelularsTest < ApplicationSystemTestCase
  setup do
    @celular = celulars(:one)
  end

  test "visiting the index" do
    visit celulars_url
    assert_selector "h1", text: "Celulars"
  end

  test "should create celular" do
    visit celulars_url
    click_on "New celular"

    fill_in "Color", with: @celular.color
    fill_in "Marca", with: @celular.marca
    click_on "Create Celular"

    assert_text "Celular was successfully created"
    click_on "Back"
  end

  test "should update Celular" do
    visit celular_url(@celular)
    click_on "Edit this celular", match: :first

    fill_in "Color", with: @celular.color
    fill_in "Marca", with: @celular.marca
    click_on "Update Celular"

    assert_text "Celular was successfully updated"
    click_on "Back"
  end

  test "should destroy Celular" do
    visit celular_url(@celular)
    click_on "Destroy this celular", match: :first

    assert_text "Celular was successfully destroyed"
  end
end
