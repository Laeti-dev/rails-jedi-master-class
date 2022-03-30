require 'rails_helper'

RSpec.describe Lesson, type: :model do
  describe '#quick_description' do
    it 'returns a shorter version of the lesson description' do
      lesson = Lesson.create!(skill_name: 'Skill Name', description: 'A long description of the skill the jedi or the sith want to teach during this training')
      expect(lesson.quick_description).to_eq("#{lesson.description[0..15]}...")
    end
  end
end
