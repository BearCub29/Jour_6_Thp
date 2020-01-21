require_relative '../lib/caesar_cipher'

describe "the control method" do
  it "control if input[0]  = string && input[1] = integer <=26" do
    expect(control("t",4)).to eq(true)
    expect(control("test",5)).to eq(true)
    expect(control("test test test",10)).to eq(true)
  end
  it "control unless input[0]  = string && input[1] = integer <=26" do
  expect(control(3,"t")).to eq(false)
  expect(control(5,5)).to eq(false)
  expect(control(true,nil)).to eq(false)
  end
end

describe "the caesar_cipher method" do
  it "for one letter" do
    expect(caesar_cipher("a",3)).to eq("d")
    expect(caesar_cipher("z",5)).to eq("e")
    expect(caesar_cipher("f",4)).to eq("j")
  end

  it " for one word" do
    expect(caesar_cipher("jean",3)).to eq("mhdq")
    expect(caesar_cipher("hello",2)).to eq("jgnnq")
    expect(caesar_cipher("youpi",4)).to eq("csytm")
  end

  it "for one sentence" do
    expect(caesar_cipher("jean jean",3)).to eq("mhdq mhdq")
    expect(caesar_cipher("hello hello",2)).to eq("jgnnq jgnnq")
    expect(caesar_cipher("youpi youpi",4)).to eq("csytm csytm")
  end

end