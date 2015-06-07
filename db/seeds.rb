# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

activity_types = ActivityType.create([{ name: 'System' }, { name: 'User Defined' }])
Activity.create(name: 'Root', activity_type: activity_types.first)
Activity.create(name: 'IT', parent_id: '1', activity_type: activity_types.first)
Activity.create(name: 'Sales', parent_id: '1', activity_type: activity_types.first)
Activity.create(name: 'Ops', parent_id: '1', activity_type: activity_types.first)
Activity.create(name: 'Finance', parent_id: '1', activity_type: activity_types.first)
Activity.create(name: 'HR', parent_id: '1', activity_type: activity_types.first)
Activity.create(name: 'Marketing', parent_id: '1', activity_type: activity_types.first)
Activity.create(name: 'Social', parent_id: '1', activity_type: activity_types.first)
Activity.create(name: 'Development', parent_id: '2', activity_type: activity_types.first)
Activity.create(name: 'Development Languages', parent_id: '9', activity_type: activity_types.first)
Activity.create(name: 'C#', parent_id: '10', activity_type: activity_types.first)
Activity.create(name: 'Ruby', parent_id: '10', activity_type: activity_types.first)
Activity.create(name: 'Java', parent_id: '10', activity_type: activity_types.first)
Activity.create(name: 'Volley Ball', parent_id: '8', activity_type: activity_types.first)
Activity.create(name: 'Table Tennis', parent_id: '8', activity_type: activity_types.first)
Activity.create(name: 'Programme Mgt', parent_id: '4', activity_type: activity_types.first)
Activity.create(name: 'Football', parent_id: '8', activity_type: activity_types.first)

