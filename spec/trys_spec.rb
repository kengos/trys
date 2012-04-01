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
  end
end