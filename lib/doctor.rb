require_relative 'appointment'
require_relative 'patient'


class Doctor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
        @appointments = []
    end

    def appointments
        # @appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
        # @appointments << appointment
        # appointment.doctor = self
        # Appointment.new(date, patient)
    end

    def patients
        appointments.collect do |appointment|
            appointment.patient
        end
    end

    def self.all
        @@all
    end

    def patient
        @appointment.doctor = self
    end


end