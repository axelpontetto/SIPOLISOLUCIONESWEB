# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# usuarios #

admin = User.create!(
    name:"admin",
    apellido:"admin",
    nacimiento:'12/03/1990',
    email:"admin@admin.com",
    premium: true,
    admin: true,
    password: "administrador",
    password_confirmation: "administrador",
    direccion: "casa",
    telefono: "casa",
    )

lea = User.create!(
    name:"Leandro",
    apellido:"Libutti",
    nacimiento:'12/03/1995',
    email:"leandro@leandro.com",
    premium: true,
    admin: false,
    password: "12345678",
    password_confirmation: "12345678",
    direccion: "casa",
    telefono: "casa",
    )

gabi = User.create!(
    name:"Gabriel",
    apellido:"Simone",
    nacimiento:'12/03/1990',
    email:"gabi@gabi.com",
    premium: false,
    admin: false,
    password: "12345678",
    password_confirmation: "12345678",
    direccion: "casa",
    telefono: "casa",
    )

axl = User.create!(
    name:"Axel",
    apellido:"Pontetto",
    nacimiento:'12/03/1990',
    email:"axel@axel.com",
    premium: true,
    admin: false,
    password: "12345678",
    password_confirmation: "12345678",
    direccion: "casa",
    telefono: "casa",
    )

#categoria#
c1 = Category.create(
    id:'10',
    nombre: "Casa",
    estado: true,
    )
c2 = Category.create(
    id:'20',
    nombre: "Departamento",
    estado: false,
    )




#couches#

Couch.create(
    id:'10',
    nombre: "casa",
    capacidad: 7,
    descripcion:"Casa para 7 personas con pileta olimpica, ideal para descansar un fin de semana. ",
    user_id:lea.id,
    category_id: c1.id,   
    pais: "Argentina",
    provincia: "Buenos Aires",
    ciudad: "La Plata",
    )

Couch.create(
    id:'20',
    nombre: "Super",
    capacidad: 1,
    descripcion:"Departamento para 1 persona, ideal para descansar un fin de semana ",
    user_id:gabi.id,
    category_id: c1.id,
    pais: "Argentina",
    provincia: "Neuquen",
    ciudad: "Villa La Angostura",
    )

Couch.create(
    id:'30',
    nombre: "Departamento",
    capacidad: 3,
    descripcion:"Departamento para 3 personas con jacuzzi",
    user_id:axl.id,
    category_id: c1.id,
    pais: "Argentina",
    provincia: "Buenos Aires",
    ciudad: "La Plata",
    )
