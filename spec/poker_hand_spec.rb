require('rspec')
require('poker_hand')

describe("poker_hand") do
 it("returns the name of the poker hand, given a five card argument") do
  poker_hand(['2S', '3C', '4D', '5C', '6H']).should(eq('straight'))
 end
end
