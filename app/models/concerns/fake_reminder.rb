module FakeReminder extend ActiveSupport::Concern
  def send_reminder(type, patient, phyisician)
    if type.eql?('patient')
      puts "Sending email to #{patient.email} ... remember your appointment with dr #{phyisician.name}"
    else
      puts "Sending email to #{phyisician.email} ... remember your appointment with the patient: #{patient.name}"
    end
  end
end
