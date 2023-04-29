require_relative "../src/4"

RSpec.describe "#html_from_list" do 
  context "given a list" do 
    it "should generate the correct HTML list set" do 
      data = [1, 2, 3, [4, 5, 6], 7, [8, 9]]
      expected = <<~HTML.gsub(" ", "").gsub("\n", "")
        <ul>
          <li>1</li>
          <li>2</li>
          <li>3</li>
          <ul>
            <li>4</li>
            <li>5</li>
            <li>6</li>
          </ul>
          <li>7</li>
          <ul>
            <li>8</li>
            <li>9</li>
          </ul>
        </ul>
      HTML

      expect(html_from_list(data)).to eq expected
    end 
  end
end

RSpec.describe "#count_nodes" do 
  context "given a list" do 
    it "should count all items in the list" do 
      data = [1, 2, 3, [4, 5, 6], 7, [8, 9]]

      expect(count_nodes(data)).to eq 9
    end
  end
end
