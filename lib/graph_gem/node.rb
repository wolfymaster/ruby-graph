class Node
    attr_reader :label, :emittable_facts, :requirements, :meta

    def initialize(label:, emittable_facts: [], requirements: [], meta: {})
        @label = label
        @emittable_facts = emittable_facts
        @requirements = requirements
        @meta = meta
    end
end
