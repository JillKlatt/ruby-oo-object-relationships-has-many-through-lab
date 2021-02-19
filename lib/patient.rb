require 'pry'
require_relative 'doctor'
require_relative 'appointment'

class Patient 
    attr_accessor :name, :appointment
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @appointments = []
    end

    # def new_appointment(date, doctor)
    #     Appointment.new(date, self, doctor)
    #     # @appointments << self
    # end

    def new_appointment(date, doctor)
        # binding.pry
        appointment = Appointment.new(date, self, doctor)
        # @appointments << appointment
        # binding.pry
        # appointment.doctor = self
        # Appointment.new(date, patient)
    end

    def self.all
        @@all
    end

    # def appointments
    #     @appointments
    # end

    def appointments
        # @appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    # def appointments
    #     doctors.collect {|patient| patient.}
    # end

    def doctors
        appointments.collect do |appointment|
            appointment.doctor
        end
    end

    # def doctors
    #     # Doctor.all.select {|patient| patient.doctor == self}
    #     # appointments.collect {|patient| patient.doctor}
    #     appointments.collect do |appointment|
    #         appointment.doctor 
    #     end
    # end
end