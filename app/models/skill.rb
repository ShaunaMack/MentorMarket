# frozen_string_literal: true

class Skill < ApplicationRecord
  belongs_to :mentor

  SKILLS =
    [%w[Agile agile],
     ['Functional Programming', 'functional_programming'],
     ['Front-end Development', 'front_end_dev'],
     ['Interaction Design', 'interaction_design'],
     ['Back-end Development', 'back_end_dev'],
     %w[Consulting consulting],
     ['Data Science', 'data_science'],
     ['Mobile Development', 'mobile_dev'],
     %w[Security security],
     ['Technical Leadership', 'technical_leadership'],
     ['Cloud Infrastructure', 'cloud_infrastructure'],
     ['QA/Testing', 'qa_testing'],
     ['Project Management', 'project_management'],
     ['Business Analysis', 'business_analysis'],
     ['Product Strategy', 'product_strategy'],
     ['User Research', 'user_research'],
     ['Visual Design', 'visual_design'],
     ['Technical Writing', 'technical_writing'],
     ['Conference Speaking', 'conference_speaking']].freeze

  def get_friendly_name
    SKILLS.to_h.key(name)
  end
end
