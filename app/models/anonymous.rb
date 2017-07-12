class Anonymous
  def anonmize(name)
    (name[0].ord + name[-1].ord + name.length)
  end
end

a=Anonymous.new
puts a.anonmize("Sarat")
puts a.anonmize("Kavuru")
puts a.anonmize("Sarat Kavuru")