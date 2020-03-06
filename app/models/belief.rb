class Belief < ApplicationRecord
  belongs_to :mentor

  BELIEFS =
    [['Diversity', 'diversity'], 
    ['Inclusivity', 'inclusivity'], 
    ['Accessibility', 'accessibility'],
    ['Women in Tech', 'women_in_tech'], 
    ['Indigenous Careers in Tech', 'indigenous_careers'], 
    ['Ethical Tech', 'ethical_tech'], 
    ['LGBTIQ Representation', 'lgbtiq'], 
    ['Self Taught', 'self_taught'], 
    ['Career Changers', 'career_changers'], 
    ['Right to Privacy', 'privacy'],
    ['Freedom of Information', 'free_information'],
    ['Nerodiversity', 'neurodiversity'],
    ['Reaching the Underserved', 'reach_underserved'],
    ['Rural or Regional Tech', 'rural_tech']];

  
  def get_friendly_name
    BELIEFS.to_h.key(self.name)
  end

end
