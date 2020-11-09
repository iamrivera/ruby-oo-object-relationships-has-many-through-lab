require 'pry'

class Patient
    attr_accessor :name, :date, :patient, :doctor

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
    #    binding.pry
       Appointment.new(date, self, doctor)
    end

    def appointments
        #Iterates through appts and returns patient's appts
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    def doctors
        #Iterates appts and collects patient's doctors
        appointments.collect {|appointment| appointment.doctor}
    end




end