Admin.create(name: "Admin User", password:"password", email: "admin@admin.com")
Client.create(name:  "Client User", password: "password", email: "client@client.com", phone: "5127889900")
Shipper.create(email: "shipper@shipper.com", password: "password",  phone: "5122223344")
Business.create(name: 'Wash', email: 'wash@wash.com', hash_password: 'password')
Order.create(box_in: 1, client_id: 1, business_id: 1, status: 'Incomming', total: 100, paid: false)