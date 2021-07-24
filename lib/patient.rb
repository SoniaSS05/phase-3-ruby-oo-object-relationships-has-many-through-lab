class Patient

    attr_accessor :name

    @@all =[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date,doctor)
        new_appointment_pat = Appointment.create(date, self, doctor)
        new_appointment_pat
    end

    def appointments
        Appointment.all.filter {|appointment| appointment.patient == self}
    end

    def new_appointment(date,doctor)
        Appointment.new(date, self, doctor)
    end

    def doctors
        self.appointments.map {|appointment| appointment.doctor}
    end
end
