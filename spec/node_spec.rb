# frozen_string_literal: true

require 'spec_helper'

describe Node do
    context 'when initalizing' do
        let(:label) { 'Test Label' }
        let(:fact_1_definition) { FactDefinition.new(label: 'FactDefinition1') }
        let(:fact_2_definition) { FactDefinition.new(label: 'FactDefinition2') }
        let(:meta_data) { { 'meta': 'hash of info', ddids: [11_242, 24_592], data: [] }}

        it 'cant initialize without a label' do
            expect { described_class.new }.to raise_error(ArgumentError, 'missing keyword: :label')
        end

        it 'can read its facts, requirements and meta data' do
            node = described_class.new(label: label, emittable_facts: [fact_1_definition, fact_2_definition], requirements: [], meta: meta_data)
            expect(node.label).to eq(label)
            expect(node.emittable_facts[0]).to eq(fact_1_definition)
            expect(node.emittable_facts[1]).to eq(fact_2_definition)
            expect(node.requirements).to eq([])
            expect(node.meta).to eq(meta_data)
        end
    end
end