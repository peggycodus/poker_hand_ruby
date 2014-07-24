def poker_hand (user_hand)

# user_hand =[]
user_hand_split = []

  user_hand.each do |element|
     user_hand_split = user_hand_split.push(element.split(//))
     user_hand_split.map do |key|
      if key[0] == "J"
        key[0] = 11
      elsif key[0] == "Q"
        key[0] = 12
      elsif key[0] == "K"
        key[0] = 13
      elsif key[0] == "A"
        key[0] = 14
      else
        key[0] = key[0].to_i
      end
    end
  end

user_hand_split.sort_by!{|k|k[0]}
print user_hand_split

# user_hash = Hash[user_hand_split.map {| | }]


  hands = {"no_pair" => 0,
            "1_pair"=> 1,
            "2_pair" => 2,
            "3_of_kind" => 3,
            "straight" => 4,
            "full_house" => 5,
            "flush" => 6,
            "4_of_kind" => 7,
            "straight_flush" => 8,
            "royal_flush" => 9}
  numbers = ["2","3","4","5","6","7","8","9","10","J","Q","K","A"]
  rank = ["2"=>2, "3"=>3, "4"=>4, "5"=>5, "6"=>6, "7"=>7, "8"=>8, "9"=>9, "10"=>10, "J"=>11,"Q"=>12,"K"=>13,"A"=>14]
  suits = ["S","C","D","H"]
  cards = []

  cards = numbers.each do |n|
    cards.push(n + suits[0])
    cards.push(n + suits[1])
    cards.push(n + suits[2])
    cards.push(n + suits[3])
  end

  alike=0
  suit_alike=0
    0.upto(user_hand_split.length-2) do |index|
      if user_hand_split[index][0] == user_hand_split[index+1][0]
        alike = alike + 1
      puts "alike:" + alike.to_s
      end
    end
    if alike >0 #same branch
        if alike == 3 && ((user_hand_split[1][0] != user_hand_split[2][0]) || (user_hand_split[2][0] != user_hand_split[3][0]))# either 4 kind or fh
          puts "full house"
          return "full house"
        else
          puts "4_of_kind"
          return "4_of_kind"
        end

        if alike == 2 # 3 kind or 2p
          puts "3_of_kind or 2_pair"
          return "3_of_kind or 2_pair"

        end
        if alike == 1
          puts "1_pair"
          return "1_pair"

        end
      else
        0.upto(user_hand_split.length-1) do |index|
          if user_hand_split[index][1] == user_hand_split[index+1][1]
            suit_alike = suit_alike+1
          end
        end
        if suit_alike >= 4 #some kind of flush
          puts "some kind of flush"
        elsif 0.upto(user_hand.length-1) do |index|
          user_hand_split[index+1][0] == user_hand_split[index][0] + 1
      end
end

poker_hand(['2S', '2C', '2D', '2C', '9H'])
