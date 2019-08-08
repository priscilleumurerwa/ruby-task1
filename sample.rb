class Player
  def hand
    puts "input a number from 0 to 2"
    player_number=gets.to_i
    while
      player_number > 2||
      player_number < 0  do
      puts"wrong number "
      player_number= gets.to_i
    end
    puts "you choose #{player_number}"
    player_number
  end
end
class Enemy
  def hand
    computer_choice=rand(0..2)
    puts "i choose #{computer_choice}"
    computer_choice
  end
end
class Game
  def pon(player_hand,enemy_hand)
    difference=player_hand-enemy_hand
    final_answer= (difference +3)%3
    if final_answer==2    
      puts "you are the win"
    elsif final_answer==1 
      puts "you are the looser"
    else
      puts "it is a draw.check after"
      player=Player.new
      enemy=Enemy.new
      game=Game.new
      game.pon(player.hand,enemy.hand)
    end
  end
end
player=Player.new
enemy=Enemy.new
game=Game.new 
game.pon(player.hand,enemy.hand)