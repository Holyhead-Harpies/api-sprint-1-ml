# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
#
#
# ##DATA SEEDING USING FAKER GEM (.....mainly)
#
# # COMPUTER
# 20.times do
#    Computer.create([{
#        commission_date: Faker::Date.backward(30)
#    }])
# end
#
# # CUSTOMER
# 50.times do
#     Customer.create([{
#         first_name: Faker::Name.first_name,
#         last_name: Faker::Name.last_name,
#         activity_status: Faker::Boolean.boolean(0.9)
#     }])
# end
#
# # DEPARTMENT
# 5.times do
#     Department.create([{
#         department_name: Faker::Company.name,
#         budget: Faker::Number.decimal(6, 2)
#     }])
# end
#
# # EMPLOYEE
# 13.times do
#     Employee.create([{
#         first_name: Faker::Name.first_name,
#         last_name: Faker::Name.last_name,
#         status: Faker::Boolean.boolean(0),
#         department_id: rand(1..5)
#     }])
# end
#
# # EMPLOYEE COMPUTER
# 20.times do
#     EmployeeComputer.create([{
#         assignment_date: Faker::Date.backward(30),
#         employee_id: rand(1..13),
#         computer_id: Faker::Number.unique.between(1, 20)
#     }])
# end
#
# # ISSUING BANK
# 10.times do
#     IssuingBank.create([{
#         issuer_name: Faker::Business.unique.credit_card_type
#     }])
# end
#
# # PRODUCT TYPE
# 15.times do
#     ProductType.create([{
#         product_type_name: Faker::Commerce.unique.department(1, true)
#     }])
# end
#
# # PRODUCT
# 100.times do
#     Product.create([{
#         product_name: Faker::Commerce.product_name,
#         price: Faker::Commerce.price,
#         description: Faker::Lorem.paragraph,
#         quantity: rand(1..10),
#         product_type_id: rand(1..15),
#         customer_id: rand(1..50)
#
#     }])
# end
#
# # TRAINING PROGRAM
# 5.times do
#     end_date = Faker::Time.between(15.days.ago, Date.today, :morning)
#     TrainingProgram.create([{
#         program_name: Faker::Company.unique.catch_phrase,
#         start_date_time: Faker::Time.between(end_date - 1, end_date, :morning),
#         end_date_time: end_date,
#         attendee_max: rand(5..13)
#     }])
# end
#
# # PAYMENT TYPES
# 75.times do
#     PaymentType.create([{
#         account_number: Faker::Business.credit_card_number,
#         expiration_date: Faker::Business.credit_card_expiry_date,
#         customer_id: rand(1..50),
#         issuing_bank_id: rand(1..10)
#     }])
# end
#
# # ORDER
# pay_ids = PaymentType.all.ids
# used_customers = Array.new
#
# 25.times do
#
#     payment_type_id = pay_ids.delete_at(rand(pay_ids.length))
#     cust_id = PaymentType.find(payment_type_id).customer_id
#     if used_customers.include?(cust_id)
#
#     else
#
#         Order.create([{
#             amount_paid: 0.00,
#             payment_type_id: payment_type_id,
#             customer_id: cust_id
#         }])
#
#     end
#     used_customers.push(cust_id)
# end
#
# # EMPLOYEE TRAINING PROGRAM
# emp_ids = Employee.all.ids
# train_ids = TrainingProgram.all.ids
#
# 18.times do
#     e_id = emp_ids.sample
#     t_id = train_ids.sample
#     employee = Employee.find(e_id)
#     training_program = TrainingProgram.find(t_id)
#
#     employee.training_programs << training_program
#
# end
#
# # ORDER PRODUCT
# order_ids = Order.all.ids
# product_ids = Product.all.ids
#
# 50.times do
#     o_id = order_ids.sample
#     p_id = product_ids.sample
#     order = Order.find(o_id)
#     product = Product.find(p_id)
#
#     order.products << product
#
# end