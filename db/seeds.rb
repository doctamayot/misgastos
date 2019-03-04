Category.create(name: "Restaurants")
Category.create(name: "Grocery")
Category.create(name: "Car")
Category.create(name: "Services")
Category.create(name: "Home")
Category.create(name: "Education")
Category.create(name: "Fun")
Category.create(name: "Travel")
Kind.create(name: "Purchase")
Kind.create(name: "Withdrawal")
Kind.create(name: "Transfer")
Kind.create(name: "Payment")
50.times {Expense.create(date: Faker::Date.between(12.months.ago, Date.today), concept: Faker::Restaurant.name, amount: Faker::Commerce.price, category: Category.find_by(name:"Restaurants"), kind: Kind.find_by(name:"Purchase"))}
50.times {Expense.create(date: Faker::Date.between(12.months.ago, Date.today), concept: Faker::Food.ingredient, amount: Faker::Commerce.price, category: Category.find_by(name:"Grocery"), kind: Kind.find_by(name:"Purchase"))}
50.times {Expense.create(date: Faker::Date.between(12.months.ago, Date.today), concept: Faker::Commerce.material, amount: Faker::Commerce.price, category: Category.find_by(name:"Car"), kind: Kind.find_by(name:"Purchase"))}
50.times {Expense.create(date: Faker::Date.between(12.months.ago, Date.today), concept: Faker::Company.profession, amount: Faker::Commerce.price, category: Category.find_by(name:"Service"), kind: Kind.find_by(name:"Payment"))}
50.times {Expense.create(date: Faker::Date.between(12.months.ago, Date.today), concept: Faker::Construction.subcontract_category, amount: Faker::Commerce.price, category: Category.find_by(name:"Home"), kind: Kind.find_by(name:"Payment"))}
50.times {Expense.create(date: Faker::Date.between(12.months.ago, Date.today), concept: Faker::Educator.degree, amount: Faker::Commerce.price, category: Category.find_by(name:"Education"), kind: Kind.find_by(name:"Payment"))}
50.times {Expense.create(date: Faker::Date.between(12.months.ago, Date.today), concept: Faker::App.name, amount: Faker::Commerce.price, category: Category.find_by(name:"Fun"), kind: Kind.find_by(name:"Purchase"))}
50.times {Expense.create(date: Faker::Date.between(12.months.ago, Date.today), concept: Faker::Coffee.origin, amount: Faker::Commerce.price, category: Category.find_by(name:"Travel"), kind: Kind.find_by(name:"Payment"))}
50.times {Expense.create(date: Faker::Date.between(12.months.ago, Date.today), concept: "From #{Faker::Address.community} ATM", amount: Faker::Commerce.price, category: Category.all.sample, kind: Kind.find_by(name:"Withdrawal"))}
50.times {Expense.create(date: Faker::Date.between(12.months.ago, Date.today), concept: "To: #{Faker::Name.name} - Bank Account: #{Faker::Bank.account_number}", amount: Faker::Commerce.price, category: Category.all.sample, kind: Kind.find_by(name:"Transfer"))}