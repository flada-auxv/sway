require 'spec_helper'
require 'sway/file'

describe Sway::File do
  describe 'array.json' do
    before {@instance = Sway::File.new('spec/fixtures/array.json')}
    context 'mashes.class' do
      it {expect(@instance.mashes.class).to eq(Array)}
    end
    context 'mashes.first.class' do
      it {expect(@instance.mashes.first.class).to eq(Hashie::Mash)}
    end
    context 'mash.class' do
      it {expect(@instance.mash.class).to eq(NilClass)}
    end
  end

  describe 'hash.json' do
    before {@instance = Sway::File.new('spec/fixtures/hash.json')}
    context 'mashes.class' do
      it {expect(@instance.mashes.class).to eq(NilClass)}
    end
    context 'mash.class' do
      it {expect(@instance.mash.class).to eq(Hashie::Mash)}
    end
  end

  describe 'array.yaml' do
    before {@instance = Sway::File.new('spec/fixtures/array.yaml')}
    context 'mashes.class' do
      it {expect(@instance.mashes.class).to eq(Array)}
    end
    context 'mashes.first.class' do
      it {expect(@instance.mashes.first.class).to eq(Hashie::Mash)}
    end
    context 'mash.class' do
      it {expect(@instance.mash.class).to eq(NilClass)}
    end
  end

  describe 'hash.yaml' do
    before {@instance = Sway::File.new('spec/fixtures/hash.yaml')}
    context 'mashes.class' do
      it {expect(@instance.mashes.class).to eq(NilClass)}
    end
    context 'mash.class' do
      it {expect(@instance.mash.class).to eq(Hashie::Mash)}
    end
  end

  describe 'array.yml' do
    before {@instance = Sway::File.new('spec/fixtures/array.yml')}
    context 'mashes.class' do
      it {expect(@instance.mashes.class).to eq(Array)}
    end
    context 'mashes.first.class' do
      it {expect(@instance.mashes.first.class).to eq(Hashie::Mash)}
    end
    context 'mash.class' do
      it {expect(@instance.mash.class).to eq(NilClass)}
    end
  end

  describe 'hash.yml' do
    before {@instance = Sway::File.new('spec/fixtures/hash.yml')}
    context 'mashes.class' do
      it {expect(@instance.mashes.class).to eq(NilClass)}
    end
    context 'mash.class' do
      it {expect(@instance.mash.class).to eq(Hashie::Mash)}
    end
  end

  describe 'array.csv with header: :first_line' do
    before {@instance = Sway::File.new('spec/fixtures/array.csv', header: :first_line)}
    context 'mashes.class' do
      it {expect(@instance.mashes.class).to eq(Array)}
    end
    context 'mashes.first.class' do
      it {expect(@instance.mashes.first.class).to eq(Hashie::Mash)}
    end
    context 'mash.class' do
      it {expect(@instance.mash.class).to eq(NilClass)}
    end
  end

  describe 'array.csv without header: :first_line' do
    it {expect { Sway::File.new('spec/fixtures/array.csv')}.to raise_error(RuntimeError)}
  end
end
