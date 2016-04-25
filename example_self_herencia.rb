class Foo
  def self.default_make
    "Foo clase madre"
  end

  def foo_one
    p self.class.default_make
    p "1) #{self}"
    p "2) #{self.to_s.downcase}"
    p "3) #{self.class}"
    "4) #{self.class.to_s.downcase} :)"
  end

  def foo_two
    Foo.default_make
  end
end

class BigFoo < Foo
  def self.default_make
    "BigFoo clase Hija"
  end
end



a = Foo.new

puts "self.class.default_make"
puts a.foo_one
puts ""
puts "self.default_make"
puts a.foo_two

puts ".class de a ---------"
p a.class

puts "-------------Hijo "

b = BigFoo.new

puts "self.class.default_make"
puts b.foo_one
puts ""

puts "self.default_make"
puts b.foo_two

puts ".class de b ---------"
p b.class


