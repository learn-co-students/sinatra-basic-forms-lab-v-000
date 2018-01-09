#defines initalize method that takes parameters in order creates attr_accessor methods (strut stands for structure)
class Puppy < Struct.new(:name, :breed, :age)
end