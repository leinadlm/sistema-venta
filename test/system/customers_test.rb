require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Apellidos", with: @customer.apellidos
    fill_in "Correo", with: @customer.correo
    fill_in "Direccion", with: @customer.direccion
    fill_in "Nombre", with: @customer.nombre
    fill_in "Telefono", with: @customer.telefono
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Apellidos", with: @customer.apellidos
    fill_in "Correo", with: @customer.correo
    fill_in "Direccion", with: @customer.direccion
    fill_in "Nombre", with: @customer.nombre
    fill_in "Telefono", with: @customer.telefono
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
