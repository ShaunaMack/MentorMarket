# frozen_string_literal: true

class Belief < ApplicationRecord
  belongs_to :mentor

  BELIEFS =
    [%w[Diversity diversity],
     %w[Inclusivity inclusivity],
     %w[Accessibility accessibility],
     ['Women in Tech', 'women_in_tech'],
     ['Indigenous Careers in Tech', 'indigenous_careers'],
     ['Ethical Tech', 'ethical_tech'],
     ['LGBTIQ Representation', 'lgbtiq'],
     ['Self Taught', 'self_taught'],
     ['Career Changers', 'career_changers'],
     ['Right to Privacy', 'privacy'],
     ['Freedom of Information', 'free_information'],
     %w[Neurodiversity neurodiversity],
     ['Reaching the Underserved', 'reach_underserved'],
     ['Rural or Regional Tech', 'rural_tech']].freeze

  def get_friendly_name
    BELIEFS.to_h.key(name)
  end
end
