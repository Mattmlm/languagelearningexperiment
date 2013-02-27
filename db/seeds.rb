# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

UserEntry.delete_all
IterativeChain.delete_all

# user_entries = UserEntry.create([
#   {
#     chain_id: 1,
#     pairs: [{
#       "fej": "key",
#       "feej": "truck",
#       "jef": "feather",
#       "jeej": "lamp",
#       "fef": "window",
#       "gaab": "rock climbing",
#       "goob": "swimming",
#       "boog": "running",
#       "baab": "jumping on a trampoline",
#       "goog": "moping"
#     }]
#   }
# ])
# iterative_chains = IterativeChain.create([
#     {
#       num_users: 0
#     }
#     chain: {
#         "user0": {
#             "fej": "key",
#             "feej": "truck",
#             "jef": "feather",
#             "jeej": "lamp",
#             "fef": "window",
#             "gaab": "rock climbing",
#             "goob": "swimming",
#             "boog": "running",
#             "baab": "jumping on a trampoline",
#             "goog": "moping"
#         }
#     }},{
#     "chain": {
#         "user0": {
#             "fej": "key",
#             "feej": "truck",
#             "jef": "feather",
#             "jeej": "lamp",
#             "fef": "window",
#             "gaab": "rock climbing",
#             "goob": "swimming",
#             "boog": "running",
#             "baab": "jumping on a trampoline",
#             "goog": "moping"
#         }
#     }},{
#     "chain": {
#         "user0": {
#             "fej": "key",
#             "feej": "truck",
#             "jef": "feather",
#             "jeej": "lamp",
#             "fef": "window",
#             "gaab": "rock climbing",
#             "goob": "swimming",
#             "boog": "running",
#             "baab": "jumping on a trampoline",
#             "goog": "moping"
#         }
#     }
# }])