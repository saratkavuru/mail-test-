module ApplicationHelper
  def is_anonymous_mode?
    session[:mode]
  end
  def anonymize(name)
    (name.sum)%5
  end
  def display_anon_fullname(name)
    temp=name.split(',')
    return AnonymizedFirstName.find(anonymize(temp[0])).name+", "+AnonymizedLastName.find(anonymize(temp[-1])).name if is_anonymous_mode?
    return name
  end
  def display_anon_name(name)
      return AnonymizedFirstName.find(anonymize(name)).name if is_anonymous_mode?
      return name
  end
  def display_anon_mail(name)
      return display_anon_handle(name) + "@address.com" if is_anonymous_mode?
      return name
  end
  def display_anon_handle(name)
    return AnonymizedFirstName.find(anonymize(name)).name.downcase if is_anonymous_mode?
    return name
  end
end
