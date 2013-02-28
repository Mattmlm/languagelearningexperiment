# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

UserEntry.delete_all
IterativeChain.delete_all

user_entries = UserEntry.create([
  { chain_id: 1,
    pairs: [
      { sound: "fej", image: "key" },
      { sound: "feej", image: "truck" },
      { sound: "jef", image: "feather" },
      { sound: "jeej", image: "lamp" },
      { sound: "fef", image: "window" },
      { sound: "gaab", image: "rock climbing" },
      { sound: "goob", image: "swimming" },
      { sound: "boog", image: "running" },
      { sound: "baab", image: "jumping on a trampoline" },
      { sound: "goog", image: "moping" }
    ]
  },
  { chain_id: 2,
    pairs: [
      { sound: "fej", image: "key" },
      { sound: "feej", image: "truck" },
      { sound: "jef", image: "feather" },
      { sound: "jeej", image: "lamp" },
      { sound: "fef", image: "window" },
      { sound: "gaab", image: "rock climbing" },
      { sound: "goob", image: "swimming" },
      { sound: "boog", image: "running" },
      { sound: "baab", image: "jumping on a trampoline" },
      { sound: "goog", image: "moping" }
    ]
  },
  { chain_id: 3,
    pairs: [
      { sound: "fej", image: "key" },
      { sound: "feej", image: "truck" },
      { sound: "jef", image: "feather" },
      { sound: "jeej", image: "lamp" },
      { sound: "fef", image: "window" },
      { sound: "gaab", image: "rock climbing" },
      { sound: "goob", image: "swimming" },
      { sound: "boog", image: "running" },
      { sound: "baab", image: "jumping on a trampoline" },
      { sound: "goog", image: "moping" }
    ]
  }
])

for i in 0..(user_entries.length-1)
  IterativeChain.create(num_users: 0, chain: user_entries[i])
end