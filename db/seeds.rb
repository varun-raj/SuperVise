# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


departments = Department.create([
        { :id => 1, name: 'Computer Science & Engineering', code: "CSE" },
        { :id => 2, name: 'Electrical And Electronics Engineering', code: "EEE" },
        { :id => 3, name: 'Electronics And Communication Engineering', code: "ECE" },
        { :id => 4, name: 'Mechanical Engineering', code: "MECH" },
        { :id => 5, name: 'Civil Engineering', code: "CIVIL" },
        { :id => 6, name: 'Information Technology', code: "IT" },
    ])

batchs = Batch.create([
        { start_year: 2012, end_year: 2016, title: "2012 - 2016" },
        { start_year: 2013, end_year: 2017, title: "2013 - 2017" },
        { start_year: 2014, end_year: 2018, title: "2014 - 2018" },
        { start_year: 2015, end_year: 2019, title: "2015 - 2019" },
  ])

class_sections = ClassSection.create([
  {name: "A Section" , department_id: 1},
  {name: "B Section" , department_id: 1},
  {name: "C Section" , department_id: 1},

  {name: "A Section" , department_id: 2},
  {name: "B Section" , department_id: 2},
  {name: "C Section" , department_id: 2},

  {name: "A Section" , department_id: 3},
  {name: "B Section" , department_id: 3},
  {name: "C Section" , department_id: 3},

  {name: "A Section" , department_id: 4},
  {name: "B Section" , department_id: 4},
  {name: "C Section" , department_id: 4},

  {name: "A Section" , department_id: 5},
  {name: "B Section" , department_id: 5},
  {name: "C Section" , department_id: 5},

  {name: "A Section" , department_id: 6},
  {name: "B Section" , department_id: 6},
  {name: "C Section" , department_id: 6},

  ])
