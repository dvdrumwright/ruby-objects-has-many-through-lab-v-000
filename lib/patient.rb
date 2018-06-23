class Patient
  
  @@all = []
   
  attr_accessor :name, :doctor  
   
  def initialize(name,doctor)
     @name = name 
     @doctor = doctor
     @@all << self 
  end 
  
   
  def self.all
      @@all
  end
  
  
  def new_appointment(doctor,date)
      Appointment.new(doctor,self,date)
  end 
  
  def appointments 
      Appointment.all.select { |appointment| appointment.patient == self }
  end 
  
end 