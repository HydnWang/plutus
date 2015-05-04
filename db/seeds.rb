100.times do |n|
  amount       = rand(1..300) * 5
  balance_type = ["Income", "Expense"].sample
  if balance_type == "Income"
    category     = ["Salary薪資", "Investment投資", "Bonus獎金紅利"].sample
  else
    category     = ["Food飲食", "Transportation交通", "Clothe服裝", "Necessities日常用品", "Fee各類費用", "Entertainment娛樂"].sample
  end
  entry_date   = Faker::Date.between(Date.parse("2015-03-01"), Date.parse("2015-03-31"))
  description  = Faker::Lorem.sentence
  Entry.create!(amount:       amount,
                category:     category,
                balance_type: balance_type,
                entry_date:   entry_date,
                description:  description)
end

120.times do |n|
  amount       = rand(1..300) * 5
  balance_type = ["Income", "Expense"].sample
  if balance_type == "Income"
    category     = ["Salary薪資", "Investment投資", "Bonus獎金紅利"].sample
  else
    category     = ["Food飲食", "Transportation交通", "Clothe服裝", "Necessities日常用品", "Fee各類費用", "Entertainment娛樂"].sample
  end
  entry_date   = Faker::Date.between(Date.parse("2015-04-01"), Date.parse("2015-04-30"))
  description  = Faker::Lorem.sentence
  Entry.create!(amount:       amount,
                category:     category,
                balance_type: balance_type,
                entry_date:   entry_date,
                description:  description)
end

10.times do |n|
  amount       = rand(1..300) * 5
  balance_type = ["Income", "Expense"].sample
  if balance_type == "Income"
    category     = ["Salary薪資", "Investment投資", "Bonus獎金紅利"].sample
  else
    category     = ["Food飲食", "Transportation交通", "Clothe服裝", "Necessities日常用品", "Fee各類費用", "Entertainment娛樂"].sample
  end
  entry_date   = Faker::Date.between(Date.parse("2015-05-01"), Date.today)
  description  = Faker::Lorem.sentence
  Entry.create!(amount:       amount,
                category:     category,
                balance_type: balance_type,
                entry_date:   entry_date,
                description:  description)
end
