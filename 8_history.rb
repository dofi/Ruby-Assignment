# Code from: http://paul-wong-jr.blogspot.com/2012/04/ruby-metaprogramming-with-classeval.html

class Class
        def attr_accessor_with_history(attr_name)
                attr_name = attr_name.to_s         # make sure it's a string  
                attr_reader attr_name              # create the attribute's getter  
                attr_reader attr_name + "_history" # create bar_history getter

                # write our setter code below  
                class_eval %Q(
                        def #{attr_name}=(attr_name)
                                @#{attr_name} = attr_name

                                unless @#{attr_name + "_history"}
                                        @#{attr_name + "_history"} = []
                                        @#{attr_name + "_history"} << nil
                                end

                                @#{attr_name + "_history"} << attr_name
                        end
                )
        end
end

class Foo
        attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1
f.bar = 2
p f.bar_history
