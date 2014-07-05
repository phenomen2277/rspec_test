require 'rails_helper'

RSpec.describe Post, :type => :model do
 it "should not save on an empty title attribute" do
    p = Post.new
    p.body = "This is the body"
    expect(p.save).to eq(false)
 end

 it "should not save on an empty body attribute" do
   p = Post.new
   p.title = "This is the title"
   expect(p.save).to eq(false)
 end

 it "should not save when the object's attributes are empty" do
   p = Post.new
   expect(p.save).to eq(false)
 end

  it "should save when all the attributes are set" do
    p = Post.new
    p.title = "This is the title"
    p.body = "This is the body"
    expect(p.save).to eq(true)
  end

end
