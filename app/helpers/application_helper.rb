module ApplicationHelper
  def get_anonymous_mode
    session[:mode]
  end
  def anonymize(name)
    (name.sum)%5
  end
  def anonymize_fullname(name)
    if (session[:mode])
    temp=name.split(',')
    return AnonymizedFirstName.find(anonymize(temp[0])).name+", "+AnonymizedLastName.find(anonymize(temp[-1])).name
    else
      return name
      end
  end
  def display_anon_name(name)
    if (session[:mode])
      return AnonymizedFirstName.find(anonymize(name)).name
    else
      return name
    end
  end
end
