require_relative './lib/artist.rb'
require_relative './lib/song.rb'
require_relative './lib/genre.rb'
require_relative './lib/patient.rb'
require_relative './lib/doctor.rb'
require_relative './lib/appointment.rb'

=begin
p john = Artist.new("john")
karin = Artist.new("Karin")
p canc = Song.new("yo soy", john, "adventure")
canc1 = Song.new("hihi", karin, "romantic")
p Artist.all
p Song.all
p karin.songs
p karin.new_song("happy",karin)
p Song.all
=end
#p docjohn = Doctor.new("John")
#p patkari = Patient.new("Karina")
#p appjohnkari = Appointment.new("Friday", patkari, docjohn)

p doctor_who = Doctor.new('The Doctor')
p doctor_what = Doctor.new('Das Doktor')
p hevydevy = Patient.new('Devin Townsend')
p hevydevy.new_appointment('Friday, January 32nd', doctor_who)
p hevydevy.new_appointment('Saturday, January 32nd', doctor_what)
p hevydevy.doctors
