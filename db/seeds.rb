# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Company.create(id: 1, name: 'Oracle', address: 'Oracle Corporation, 500 Oracle Parkway, Redwood Shores, CA 94065')	
Company.create(id: 2, name: 'Alviso', address: 'Štefánikova 65/1, Smíchov, Prague-Prague 5, Czech Republic')	
Company.create(id: 3, name: 'Apple', address: '1 Infinite Loop, Cupertino')
Company.create(id: 4, name: 'Google', address: 'Mountain View 1600 Amphitheatre Parkway Mountain View, CA')

Candidate.create(name: 'Petr', surname: 'Barta', email: 'pb@email.cz', phone: 123456789, role: 'programmer', city: 'Prague', technology: 'RoR', company_id: 1)
Candidate.create(name: 'David', surname: 'Holec', email: 'dh@email.cz', phone: 456789123, role: 'programmer', city: 'Prague', technology: 'Java', company_id: 2)
Candidate.create(name: 'Matej', surname: 'Slovacek', email: 'ms@email.cz', phone: 789123456, role: 'programmer', city: 'Prague', technology: 'C++', company_id: 3)
Candidate.create(name: 'Martin', surname: 'Duchecek', email: 'md@email.cz', phone: 789456123, role: 'programmer', city: 'Prague', technology: 'C#', company_id: 1)

Contact.create(name: 'Jan',	surname: 'Vasek', email: 'jv@email.cz', phone: 123456789, role: 'Recruiter', company_id: 1)
Contact.create(name: 'Karel',	surname: 'Lastuvka', email: 'kl@email.cz', phone: 321456789, role: 'Hiring Manager', company_id: 1)
Contact.create(name: 'Adela',	surname: 'Vackova', email: 'av@email.cz', phone: 123456789, role: 'HR', company_id: 2)
Contact.create(name: 'Petra',	surname: 'Stenclova', email: 'ps@email.cz', phone: 123456789, role: 'Intern', company_id: 3)

