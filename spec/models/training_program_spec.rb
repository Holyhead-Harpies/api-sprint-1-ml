require 'rails_helper'

describe TrainingProgram do

  context '.create' do
    it 'is not valid with a bigger commission date than decommission date' do
      training_program = TrainingProgram.create(end_date_time: '2017-09-26',
                                 start_date_time: '2017-08-26' )
      expect(training_program).to_not be_valid
    end
  end
  context 'without program_name' do
    it 'throws error if no program_name is present' do
      training_program = TrainingProgram.create
      training_program.program_name = ''
      training_program.start_date_time = '2017-08-26'
      training_program.end_date_time = '2017-09-26'
      expect(training_program).to_not be_valid
    end
  end
  context 'without start_date_time' do
    it 'throws error if no start_date_time is present' do
      training_program = TrainingProgram.create
      training_program.start_date_time = ''
      expect(training_program).to_not be_valid
    end
  end
  context 'without end_date_time' do
    it 'throws error if no end_date_time is present' do
      training_program = TrainingProgram.create
      training_program.end_date_time = ''
      expect(training_program).to_not be_valid
    end
  end
  context 'without attendee_max' do
    it 'throws error if no attendee_max is present' do
      training_program = TrainingProgram.create
      training_program.attendee_max = ''
      expect(training_program).to_not be_valid
    end
  end


end
