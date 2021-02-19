require 'pry'
class Appointment
    attr_accessor :date, :patient, :doctor
    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
        # doctor.new_appointment(self)
    end

    def self.all
        @@all
    end

    # def patient
    #     binding.pry
    #     self.patient = @patient
    # end

    def patient
        @patient
    end

 


end