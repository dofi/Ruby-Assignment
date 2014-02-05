# This site helped me: https://gist.github.com/tomtung/1973534

class Dessert
        def initialize(name, calories)
                @name = name
                @calories = calories
        end

        # attr_accessor gives access to reader and writer methods
        attr_accessor :name
        attr_accessor :calories

        def healthy?
                if @calories < 200
                        true
                else
                        false
                end
        end

        def delicious?
                true
        end
end

class JellyBean < Dessert
        def initialize(name, calories, flavor)
                @flavor = flavor
                super(name, calories)
        end

        attr_accessor :flavor

        def delicious?
                if @flavor == 'black licorice'
                        false
                else
                        true
                end
        end
end

Dessert1 = Dessert.new('Chocolate', 250)
Dessert2 = JellyBean.new('Jelly bean', 150, 'black licorice')
Dessert2.healthy?
Dessert2.delicious?
