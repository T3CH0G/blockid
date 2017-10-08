# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create(cal_id: 30000001, section_id: 1, name: 'Ben', email: 'ben@berkeley.edu',attendance: 4)
Student.create(cal_id: 30000002, section_id: 1, name: 'Avanthika', email: 'avanthika@berkeley.edu',attendance: 4)
Student.create(cal_id: 30000003, section_id: 1, name: 'Erin', email: 'erin@berkeley.edu',attendance: 0)

Professor.create(name: 'Denero', email: 'denero@berkeley.edu')

Section.create(start: DateTime.parse('7th Oct 2017 10:00:00'), end: DateTime.parse('7th Oct 2017 11:00:00'), professor_id: 1, name:'CS 61A')
Section.create(start: DateTime.parse('7th Oct 2017 10:00:00'), end: DateTime.parse('7th Oct 2017 11:00:00'), professor_id: 1, name:'CS 61B')
Section.create(start: DateTime.parse('7th Oct 2017 10:00:00'), end: DateTime.parse('7th Oct 2017 11:00:00'), professor_id: 1, name:'CS 70')


Checkin.create(student_id: 1, section_id: 1, time: DateTime.parse('28th Sep 2017 09:58:00'))
Checkin.create(student_id: 2, section_id: 1, time: DateTime.parse('28th Sep 2017 09:59:00'))
Checkin.create(student_id: 3, section_id: 1, time: DateTime.parse('28th Sep 2017 10:01:00'),status:'Tardy')

Checkin.create(student_id: 1, section_id: 1, time: DateTime.parse('30th Sep 2017 09:58:00'))
Checkin.create(student_id: 2, section_id: 1, time: DateTime.parse('30th Sep 2017 09:59:00'))
Checkin.create(student_id: 3, section_id: 1, time: DateTime.parse('30th Sep 2017 10:01:00'),status:'Tardy')

Checkin.create(student_id: 1, section_id: 1, time: DateTime.parse('1st Oct 2017 09:58:00'))
Checkin.create(student_id: 2, section_id: 1, time: DateTime.parse('1st Oct 2017 09:59:00'))
Checkin.create(student_id: 3, section_id: 1, time: DateTime.parse('1st Oct 2017 10:01:00'),status:'Tardy')

Checkin.create(student_id: 1, section_id: 1, time: DateTime.parse('7th Oct 2017 09:58:00'))
Checkin.create(student_id: 2, section_id: 1, time: DateTime.parse('7th Oct 2017 09:59:00'))
Checkin.create(student_id: 3, section_id: 1, time: DateTime.parse('7th Oct 2017 10:01:00'),status:'Tardy')

User.create(
        email: "ben@berkeley.edu",
        password: "123456"
    )
User.create(
        email: "avanthika@berkely.edu",
        password: "123456"
    )
User.create(
        email: "erin@berkeley.edu",
        password: "123456"
    )
User.create(
        email: "denero@berkeley.edu",
        password: "123456"
    )






