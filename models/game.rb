class Game

  def self.play(hand1, hand2)
    answers = [hand1, hand2]
    if answers.include?('scissors') && answers.include?('rock')
      winning_hand = 'Rock'
      if answers[0] == 'rock'
        winner = 'Player 1'
      else
        winner = 'Player 2'
      end
      result = [winning_hand, winner]
      return result
    elsif answers.include?('scissors') && answers.include?('paper')
      winning_hand = 'Scissors'
      if answers[0] == 'scissors'
        winner = 'Player 1'
      else
        winner = 'Player 2'
      end
      result = [winning_hand, winner]
      return result
    elsif answers.include?('rock') && answers.include?('paper')
      winning_hand = 'Paper'
      if answers[0] == 'paper'
        winner = 'Player 1'
      else
        winner = 'Player 2'
      end
      result = [winning_hand, winner]
      return result
    else
      winning_hand = 'the same hand'
      winner = 'Nobody'
      result = [winning_hand, winner]
      return result
    end
  end

end
