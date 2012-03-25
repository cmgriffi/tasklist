class Project < ActiveRecord::Base
  Priority_names = {
  1 => "very high",
  2 => "High",
  3 => "medium",
  4 => "low",
  5 => "very low"
}


has_attached_file :image, :styles => {
  :medium => "128x128>",
  :small => "48x48>"
}

def priority_name
  Priority_names[priority]
end


def self.priority_name_options
  Priority_names.to_a.sort
end


end
