# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#employee = Employee.new(name: 'Szymon', surname: 'Starzak', degree: 'Prof' ).save
#employee.create_user
#    employee.user.email = 'szymonstarzak@gmail.com'
#    employee.user.password = 'qwerty123'
#    employee.user.save

room = Room.create([{name: 'B101', places:'15'}, 
					{name: 'B102', places:'15'},
					{name: 'B102', places:'15'},
					{name: 'B103', places:'15'},
					{name: 'D100', places:'15'},
					{name: 'D101', places:'15'},
					{name: 'D102', places:'15'},
					{name: 'D201', places:'15'},
					{name: 'D301', places:'15'},
					{name: 'F101', places:'15'},
					{name: 'F102', places:'15'},
					{name: 'F201', places:'15'},
					{name: 'A1', places:'15'},
					{name: 'A61', places:'15'},
					{name: 'A301', places:'15'}
])

