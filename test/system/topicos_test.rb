require "application_system_test_case"

class TopicosTest < ApplicationSystemTestCase
  setup do
    @topico = topicos(:one)
  end

  test "visiting the index" do
    visit topicos_url
    assert_selector "h1", text: "Topicos"
  end

  test "creating a Topico" do
    visit topicos_url
    click_on "New Topico"

    fill_in "Content", with: @topico.content
    fill_in "Title", with: @topico.title
    click_on "Create Topico"

    assert_text "Topico was successfully created"
    click_on "Back"
  end

  test "updating a Topico" do
    visit topicos_url
    click_on "Edit", match: :first

    fill_in "Content", with: @topico.content
    fill_in "Title", with: @topico.title
    click_on "Update Topico"

    assert_text "Topico was successfully updated"
    click_on "Back"
  end

  test "destroying a Topico" do
    visit topicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Topico was successfully destroyed"
  end
end
