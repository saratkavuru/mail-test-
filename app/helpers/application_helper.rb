module ApplicationHelper
  def get_anonymous_mode
    session[:mode]
  end
  def anonymize(name)
    (name.sum)%50
  end
  def display_anon_name(name)
    if (session[:mode])
      return anonymize(name)
    else
      return name
    end
  end
end
