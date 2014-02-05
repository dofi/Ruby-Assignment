class Numeric
        @@currencies = {'dollar' => 1.0, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}

        def method_missing(method_id)
                singular_currency = method_id.to_s.gsub( /s$/, '')

                if @@currencies.has_key?(singular_currency) # True if the given key is present
                        self * @@currencies[singular_currency]
                else
                        super
                end
        end

        def in(currency)
                singular_currency = currency.to_s.gsub( /s$/, '') # Plural or singular work
                self / @@currencies[singular_currency]
        end
end

puts 5.dollars.in(:euros)
puts 10.euros.in(:rupees)
puts 1.dollar.in(:rupees)
puts 10.dollars.in(:euro)
puts 1000.yen.in(:dollars)

