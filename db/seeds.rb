# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{email: 't1@test.com', password: '111111'},
                     {email: 't2@test.com', password: '111111'},
                     {email: 't3@test.com', password: '111111'},
                     {email: 't4@test.com', password: '111111'},
                     {email: 't5@test.com', password: '111111'},
                     {email: 't6@test.com', password: '111111'},
                    ])
