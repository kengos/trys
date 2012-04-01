# coding: utf-8
require 'spec_helper'

describe "Trys" do
  describe "extensions" do
    it { Object.method_defined?(:try).should be }
    it { NilClass.method_defined?(:try).should be }
    it { nil.try(:foo).should be_nil }
    it { 3.try(:to_s).should == "3" }
  end

  describe "#trys" do
    it { 3.trys(:to_s, :foo).should be_nil }
    it { 3.trys(:to_s, :to_i).should == 3 }
    it { 3.trys(:to_s, :to_i, :foo).should be_nil }

    context "block_given" do
      it { 3.try {|o| (o * o).to_s}.should == "9" }
      it { 3.trys(:to_s) {|o| (o.to_i * o.to_i).to_s }.should == "9" }
      it { 3.trys(:to_s) {|o| (o.foo * o.bar).to_s }.should be_nil }
      it { 3.trys(:foo) {|o| o.to_i }.should be_nil }
    end
  end
end