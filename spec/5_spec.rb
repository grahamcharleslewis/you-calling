require_relative "../src/5"

RSpec.describe "#html_from_hash" do 
  context "given a hash" do 
    it "should generate the correct HTML list set" do 
      data = {
        1 => "one", 2 => "two", 
        3 => {
          4 => "four", 5 => "five", 6 => "six"
        }, 
        7 => {
          8 => "eight", 9 => "nine"
        }
      }
      expected = <<~HTML.gsub(" ", "").gsub("\n", "")
        <ul>
          <li>1:one</li>
          <li>2:two</li>
          <li>3:</li> 
          <ul>
            <li>4:four</li>
            <li>5:five</li>
            <li>6:six</li>
          </ul>
          <li>7:</li>
          <ul>
            <li>8:eight</li>
            <li>9:nine</li>
          </ul>
        </ul>
      HTML

      expect(html_from_hash(data)).to eq expected
    end 
  end
end
