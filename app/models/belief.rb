class Belief < ApplicationRecord
  belongs_to :mentor


  BELIEFS =
    [['Diversity', 'diversity'], 
    ['Inclusivity', 'inclusivity'], 
    ['Accessibility', 'accessibility'],
    ['Women in tech', 'women_in_tech'], 
    ['Indigenous Careers in tech', 'indigenous_careers'], 
    ['Ethical tech', 'ethical_tech'], 
    ['LGBTIQ representation', 'lgbtiq'], 
    ['Self Taught', 'self_taught'], 
    ['Career Changers', 'career_changers'], 
    ['Right to privacy', 'privacy'],
    ['Freedom of Information', 'free_information'],
    ['Nerodiversity', 'neurodiversity'],
    ['Reaching the Underserved', 'reach_underserved'],
    ['Rural or Regional tech', 'rural_tech']];

  
  def get_friendly_name
    BELIEFS.to_h.key(self.name)
  end

end
