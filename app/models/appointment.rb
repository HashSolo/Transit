class Appointment < ActiveRecord::Base
  belongs_to :case
  has_and_belongs_to_many :clinicians
  has_and_belongs_to_many :patients
  
  attr_accessor :patient_list
  after_save :update_patients
  
  attr_accessor :clinician_list
  after_save :update_clinicians
  
  private
  
  def update_patients
    patients.delete_all
    selected_patients = patient_list.nil? ? [] : patient_list.keys.collect{|id| Patient.find_by_id(id)}
    selected_patients.each {|patient| self.patients << patient}
  end
  
  def update_clinicians
    clinicians.delete_all
    selected_clinicians = clinician_list.nil? ? [] : clinician_list.keys.collect{|id| Clinician.find_by_id(id)}
    selected_clinicians.each {|clinician| self.clinicians << clinician}
  end
    
end
