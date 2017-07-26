class Anonymous
  def anonymize(name)
    (name.sum)%50
  end
  def anonymize_fullname(name)
    temp=name.split(',')
    return anonymize(temp[0]),anonymize(temp[-1])
  end
end

a=Anonymous.new
puts a.anonymize("Sarat")
puts a.anonymize("Kavuru")
puts a.anonymize("Sarat Kavuru")
puts a.anonymize_fullname("Sarat,Kavuru")