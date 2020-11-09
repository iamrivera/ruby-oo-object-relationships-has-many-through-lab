require 'pry'

class Doctor 
    attr_accessor :date, :patient, :doctor, :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        #Creates a new appt
        #Appt should know it belongs to doctor
        Appointment.new(date, patient, self)
    end

    def appointments
        #Iterates all appts to find doctor match 
        # binding.pry
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
        #Iterates over self appts and returns patients
        appointments.collect {|appointment| appointment.patient}
    end


end