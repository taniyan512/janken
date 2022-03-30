def janken
 puts "じゃんけん・・・"
 puts "0(グー)1(チョキ)2(パー)3(戦わない)"  
 player_hand = gets.to_i
 program_hand = rand(3)
 
 puts "ホイ！"

 jankens = ["グー","チョキ","パー","戦わない"]
 
 puts "あなたの手#{jankens[player_hand]}, プログラムの手#{jankens[program_hand]}"
 puts player_hand
 if player_hand == program_hand 
   puts "あいこ"
   return true
 elsif player_hand == 0 && program_hand == 1 || player_hand == 1 && program_hand == 2 || player_hand == 2 && program_hand == 0
   yubiwo_sasu
 elsif player_hand == 3 || program_hand == 3
   puts "戦いが放棄されました"
   puts "平和！！"
 else
   kaowo_muku
 end
end

#あなたが指を指す時のメソッド
def yubiwo_sasu
  puts "勝ちまであと少し"
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  
  player_yubi = gets.to_i
  program_kao = rand(3)
  
  puts "ホイ！"
  
  directions = ["上","下","左","右"]
  
  puts  "あなた：#{directions[player_yubi]}"
  puts  "プログラム：#{directions[program_kao]}"
  
  if player_yubi == program_kao
    puts "あなたの勝ちです！"
  else
    janken
  end
end

#あなたが顔を向く時のメソッド
def kaowo_muku
  puts "負けるかも？"
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  
  player_kao = gets.to_i
  program_yubi = rand(3)
  
  puts "ホイ！"
  
    directions = ["上","下","左","右"]
    
  puts  "あなた：#{directions[player_kao]}"
  puts  "プログラム：#{directions[program_yubi]}"
  
  if player_kao == program_yubi
    puts "あなたの負けです"
  else
    janken
  end

end
 
next_game = true

while next_game 
   next_game = janken
end


