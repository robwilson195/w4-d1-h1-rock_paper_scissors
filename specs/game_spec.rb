require 'minitest/autorun'
require 'minitest/rg'
require_relative('../models/game.rb')

class GameTest < Minitest::Test

  def test_rock_v_paper
    game_result = Game.play('rock', 'paper')
    assert_equal(['Paper', 'Player 2'], game_result)
  end

  def test_paper_v_rock
    game_result = Game.play('paper', 'rock')
    assert_equal(['Paper', 'Player 1'], game_result)
  end

  def test_rock_v_scissors
    game_result = Game.play('rock', 'scissors')
    assert_equal(['Rock', 'Player 1'], game_result)
  end

  def test_scissors_v_rock
    game_result = Game.play('scissors', 'rock')
    assert_equal(['Rock', 'Player 2'], game_result)
  end

  def test_paper_v_scissors
    game_result = Game.play('paper', 'scissors')
    assert_equal(['Scissors', 'Player 2'], game_result)
  end

  def test_scissors_v_paper
    game_result = Game.play('scissors', 'paper')
    assert_equal(['Scissors', 'Player 1'], game_result)
  end


end
