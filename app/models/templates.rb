class Templates

  def self.get_template
    [
            {
                    "name" => "name",
                    "type" => "text_field"
            },
            {
                    "name" => "age",
                    "type" => "text_field"
            },
            {
                    "name" => "age_is",
                    "type" => "select_box",
                    "options" => ["Approximate", "Exact"]
            },
            {
                    "name" => "gender",
                    "type" => "radio_button",
                    "options" => ["Male", "Female"]
            },
            {
                    "name" => "origin",
                    "type" => "text_field"
            },
            {
                    "name" => "last_known_location",
                    "type" => "text_field"
            },
            {
                    "name" => "date_of_separation",
                    "type" => "select_box",
                    "options" => ["", "1-2 weeks ago", "2-4 weeks ago", "1-6 months ago", "6 months to 1 year ago", "More than 1 year ago"]
            },

            {
                    "name" => "mothers_name",
                    "type" => "text_field"
            },
            {
                    "name" => "reunite_with_mother",
                    "type" => "select_box",
                    "options" =>["Yes", " No"]
            }
    ]
  end

  def self.get_search_result_template
            [
            {
                    "name" => "name",
                    "type" => "text_field"
            },
            {
                    "name" => "age",
                    "type" => "text_field"
            },
            {
                    "name" => "is_age_exact",
                    "type" => "select_box",
                    "options" => ["Exact", "Approximate"]
            },
            {
                    "name" => "gender",
                    "type" => "radio_button",
                    "options" => ["Male", "Female"]
            },
            {
                    "name" => "origin",
                    "type" => "text_field"
            },
            {
                    "name" => "last_known_location",
                    "type" => "text_field"
            },
            {
                    "name" => "date_of_separation",
                    "type" => "select_box",
                    "options" => ["1-2 weeks ago", "2-4 weeks ago", "1-6 months ago", "6 months to 1 year ago", "More than 1 year ago"]
            }
    ]
  end
end