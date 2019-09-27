json.extract! invoice, :id, :uuid, :metodo_pago, :forma_pago, :total, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
