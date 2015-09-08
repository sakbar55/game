class Game
  def initialize(name)
    @name = name
    @player_count = 0


  end
end

print "What's your first name?"
@name = gets.chomp
if @name.empty?
puts "Player not detected. Exiting simulation."
exit
else

end


  @comp_choice= [@rock, @paper, @scissors].sample

  print "Rock, Paper, Scissors"
  player_input = gets.chomp.upcase


  if player_input = @paper && @comp_choice == @rock
    puts "Player chose paper. Computer chose rock."
    puts "Paper beats rock, player wins the round."
  @player_count +=1
end

  if player_input = @scissors && @comp_choice == @paper
    puts "Player chose scissors. Computer chose paper."
    puts "Scissors beats paper, player wins the round."
  @player_count +=1
end

if player_input = @rock && @comp_choice == @scissors
    puts "Player chose rock. Computer chose scissors."
    puts "Rock beats scissors, player wins the round."
  @player_count +=1


  if computer_choice = @paper && @player_input == @rock
    puts "Computer chose paper. Player chose rock."
    puts "Paper beats rock, computer wins the round."
  @computer_count += 1

  elsif computer_choice = @scissors && @player_input = @paper
    puts "Computer chose scissors. Player chose paper."
    puts "Scissors beats paper, computer wins the round."
  @computer_count += 1

  elsif computer_choice = @rock && @player_input == @scissors
    puts "Computer chose rock. Player chose scissors."
    puts "Rock beats scissors, computer wins the round."

  @computer_count += 1


  if computer_choice = @rock && @player_input == @rock
  puts "Computer chose rock. Player chose rock."
  puts "Same hand, it's a tie!"

  if computer_choice = @scissor && @player_input == @scissor
  puts "Computer chose scissor. Player chose scissor."
  puts "Same hand, it's a tie!"

  if computer_choice = @paper && @player_input == @paper
  puts "Computer chose paper. Player chose paper."
  puts "Same hand, it's a tie!"

  puts "Player Score: #{@player_count} Computer Score: #{@comp_count}"

end

multi_play = ["Y", "N"]
play_again = "Y"
while play_again == "Y"
    puts "Player's name:"
    name = gets.chomp.upcase
    if name.empty?
      puts 'No game until name provided'
      exit
    end
    roshambo = Roshambo.new(name)
    roshambo.game
    begin
      puts "Would you like to play again Y/N"
      play_again = gets.chomp.upcase
    end until multi_play.include?(play_again)
    exit
