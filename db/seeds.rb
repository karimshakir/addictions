User.create!([
  {name: "mike", email: "mike@gmail.com", password: "password", password_confirmation: "password"},
  {name: "joe", email: "joe@gmail.com", password: "password", password_confirmation: "password"},
  {name: "bob", email: "bob@gmail.com", password: "password", password_confirmation: "password"}
])
Addiction.create!([
  {name: "cookies"},
  {name: "Nicotine"},
  {name: "Alcohol"},
  {name: "Opioid"},
  {name: "twix"},
  {name: "hot chips"},
  {name: "phone"},
  {name: "Junk Food"},
  {name: "Caffeine"},
  {name: "anything"},
  {name: "add"},
  {name: "Peppermint"},
  {name: "Milk"},
  {name: "Marijuana"},
  {name: "Meth"},
  {name: "Heroin"},
  {name: "Cocaine"},
  {name: "Ecstasy"},
  {name: "Gambling"},
  {name: "Pills"},
  {name: "Pain Killers"},
  {name: "Nail Biting"},
  {name: "ice cream"},
  {name: "Pop"},
  {name: "Cake"}
])
AddictionOccurrence.create!([
  {user_id: 1, addiction_id: 1, location: "my-home", circumstance: "angry", amount: 4, cost: "2.0", craving: nil},
  {user_id: 2, addiction_id: 3, location: "restaurant", circumstance: "angry", amount: 1, cost: nil, craving: false},
  {user_id: 2, addiction_id: 3, location: "my-home", circumstance: "angry", amount: 1, cost: nil, craving: false},
  {user_id: 2, addiction_id: 2, location: "work", circumstance: "angry", amount: 3, cost: nil, craving: false},
  {user_id: 2, addiction_id: 2, location: "car", circumstance: "bored", amount: 2, cost: "2.0", craving: false},
  {user_id: 2, addiction_id: 2, location: "my-home", circumstance: "whatever", amount: 2, cost: "2.0", craving: true},
  {user_id: 3, addiction_id: 3, location: "work", circumstance: "depressed", amount: 1, cost: "2.0", craving: false},
  {user_id: 1, addiction_id: 1, location: "my-home", circumstance: "angry", amount: 4, cost: "2.0", craving: nil},
  {user_id: 2, addiction_id: 3, location: "restaurant", circumstance: "angry", amount: 1, cost: nil, craving: false},
  {user_id: 2, addiction_id: 3, location: "my-home", circumstance: "angry", amount: 1, cost: nil, craving: false},
  {user_id: 2, addiction_id: 2, location: "work", circumstance: "angry", amount: 3, cost: nil, craving: false},
  {user_id: 2, addiction_id: 2, location: "car", circumstance: "bored", amount: 2, cost: "2.0", craving: false},
  {user_id: 2, addiction_id: 2, location: "my-home", circumstance: "whatever", amount: 2, cost: "2.0", craving: true},
  {user_id: 3, addiction_id: 3, location: "work", circumstance: "depressed", amount: 1, cost: "2.0", craving: false}
])
