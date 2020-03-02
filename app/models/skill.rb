class Skill < ApplicationRecord
  belongs_to :mentor
  
  SKILLS =
    [['Agile', 'agile'], 
    ['Functional Programming', 'functional_programming'], 
    ['Front-end Development', 'front_end_dev'], 
    ['Interaction Design', 'interaction_design'], 
    ['Back-end Development', 'back_end_dev'], 
    ['Consulting', 'consulting'], 
    ['Data Science', 'data_science'], 
    ['Mobile Development', 'mobile_dev'], 
    ['Security', 'security'], 
    ['Technical Leadership', 'technical_leadership'], 
    ['Cloud Infrastructure', 'cloud_infrastructure'], 
    ['QA/Testing', 'qa_testing'], 
    ['Project Management', 'project_management'], 
    ['Business Analysis', 'business_analysis'], 
    ['Product Strategy', 'product_strategy'], 
    ['User Research', 'user_research'], 
    ['Visual Design', 'visual_design'], 
    ['Technical Writing', 'technical_writing'],
    ['Conference Speaking','conference_speaking']];

end
