# Resource: stackoverflow.com/questions/11352061/cartesian-product-ruby

class CartesianProduct
        include Enumerable

        attr_reader :seq1, :seq2

        def initialize(seq1, seq2)
                @seq1 = seq1
                @seq2 = seq2
        end

        def each
                seq1.each do |seq_a|
                        seq2.each { |seq_b| yield [seq_a, seq_b]}
                end
        end
end

c = CartesianProduct.new([:a, :b], [4,5])
c.each { |elt| puts elt.inspect}

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect}

