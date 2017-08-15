class Anonymous
  def anonymize(name)
    (name.sum)%5
  end
  def anonymize_fullname(name)
    temp=name.split(',')
    return AnonymizedFirstName.find(anonymize(temp[0])).name,AnonymizedLastname.find(anonymize(temp[-1])).name
  end
end


a=Anonymous.new
puts a.anonymize("Sarat")
puts a.anonymize("Kavuru")
puts a.anonymize("Sarat Kavuru")
puts a.anonymize_fullname("Sarat,Kavuru")