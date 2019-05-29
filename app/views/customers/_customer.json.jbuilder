json.extract! customer, :id, :nombre, :apellidos, :direccion, :telefono, :correo, :created_at, :updated_at
json.url customer_url(customer, format: :json)
