# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create(cal_id: 30000001, section_id: 1, name: 'Ben', email: 'ben@berkeley.edu',attendance: 4)

Professor.create(name: 'dummy', email: 'dummy@dummy.com')
Professor.create(name: 'Bank of Korea', email: 'bok@bok.edu')
Professor.create(name: 'UC Berkeley', email: 'ucb@berkeley.edu')

Section.create(start: DateTime.parse('4th Nov 2018 00:00:00'), end: DateTime.parse('7th Oct 2017 11:00:00'), professor_id: 1, name:'CS 61A')


Checkin.create(student_id: 1, professor_id: 1, time: DateTime.parse('4th Nov 2018 00:00:00'),status: "Birth1" , hashkey: "0", previous_hashkey:"0")


User.create(
        email: "ben@berkeley.edu",
        password: "123456"
    )
User.create(
        email: "bok@bok.edu",
        password: "123456"
    )
User.create(
        email: "ucb@berkeley.edu",
        password: "123456"
    )
User.create(
        email: "dummy@dummy.com",
        password: "dummy"
    )






