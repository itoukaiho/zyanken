
def janken
puts "じゃんけん..."
puts "n[1]グー/n[2]チョキ/n[3]パー/n[4]戦わない"
player_hand = gets.to_i
program_hand = rand(3)

if player_hand == 0 or player_hand >= 5
    puts "n[1]グー/n[2]チョキ/n[3]パー/n[4]戦わないのいずれかを入力してください"
    janken
    end
player_jankens = ["アルファベット","グー","チョキ","パー"]
program_jankens = ["グー","チョキ","パー"]

puts "あなたの手:#{player_jankens[player_hand]},相手の手:#{program_jankens[program_hand]}"

if (player_hand == 1 && program_hand == 0)||(player_hand == 2 && program_hand == 1)||(player_hand == 3 && program_hand == 2)
    puts "あいこで"
    janken
    
elsif(player_hand == 1 && program_hand == 1)||(player_hand == 2 && program_hand == 2)||(player_hand == 3 && program_hand == 0)
    puts "あなたの勝ちです"
    acchi_muite_win
    
    
elsif player_hand == 4
    puts "終了します"
    return false

else
    puts "あなたの負けです"
    acchi_muite_lose
    
    
end
end

def acchi_muite_win
    puts "あっち向いて-"
    puts "1(上)2(下)3(左)4(右)"
    player_direction = gets.chomp.to_i
    program_direction = rand(4)

    if player_direction == 0 or player_direction >= 5
       puts "1(上)2(下)3(左)4(右)いずれかを入力してください"
       acchi_muite_win
       
       end
        player_directions = ["アルファベット","上","下","左","右"]
       program_directions = ["上","下","左","右"]
       puts "あなたの向き:#{player_directions[player_direction]},相手の向き:#{program_directions[program_direction]}"
       
       if (player_direction == 1 && program_direction == 0)||(player_direction == 2 && program_direction == 1)||(player_direction == 3 && program_direction == 2)||(player_direction == 4 && program_direction == 3)
        puts "あなたの勝ちです"
     
        
        else
            puts "残念！"
            janken
            
        end
    end
            
    def acchi_muite_lose
        puts "あっち向いて-"
        puts "1(上)2(下)3(左)4(右)"
        player_direction = gets.chomp.to_i
        program_direction = rand(4)
    
        if player_direction == 0 or player_direction >= 5
           puts "1(上)2(下)3(左)4(右)いずれかを入力してください"
           acchi_muite_lose
           
           end
           player_directions = ["アルファベット","上","下","左","右"]
           program_directions = ["上","下","左","右"]
           puts "あなたの向き:#{player_directions[player_direction]},相手の向き:#{program_directions[program_direction]}"
           
       
        if (player_direction == 1 && program_direction == 0)||(player_direction == 2 && program_direction == 1)||(player_direction == 3 && program_direction == 2)||(player_direction == 4 && program_direction == 3)
            puts "あなたの負けです"
            
           
            else
                puts "回避！"
                janken
                
            end
        end
    
    next_game = true
    while next_game
    next_game = janken

    



    
end

