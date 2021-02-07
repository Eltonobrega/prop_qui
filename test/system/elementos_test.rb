require "application_system_test_case"

class ElementosTest < ApplicationSystemTestCase
  setup do
    @elemento = elementos(:one)
  end

  test "visiting the index" do
    visit elementos_url
    assert_selector "h1", text: "Elementos"
  end

  test "creating a Elemento" do
    visit elementos_url
    click_on "New Elemento"

    fill_in "Componente", with: @elemento.componente
    fill_in "Estado", with: @elemento.estado
    fill_in "Massa", with: @elemento.massa
    click_on "Create Elemento"

    assert_text "Elemento was successfully created"
    click_on "Back"
  end

  test "updating a Elemento" do
    visit elementos_url
    click_on "Edit", match: :first

    fill_in "Componente", with: @elemento.componente
    fill_in "Estado", with: @elemento.estado
    fill_in "Massa", with: @elemento.massa
    click_on "Update Elemento"

    assert_text "Elemento was successfully updated"
    click_on "Back"
  end

  test "destroying a Elemento" do
    visit elementos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Elemento was successfully destroyed"
  end
end
