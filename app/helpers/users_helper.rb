module UsersHelper
def anonymize(name)
  (name[0].ord + name[-1].ord + name.length)%5
end
end
