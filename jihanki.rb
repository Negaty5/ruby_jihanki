# -*- coding: utf-8 -*-

class Jihanki

  def money
  while true
    puts 'お金を入れてください。'
    @money = gets.chomp.to_i
   
    if @money == 0 
      puts 'お金のない人に用はありません。'
      puts 'ご利用ありがとうございました。'
      break
    elsif @money < 100
      puts '100円からしか受け付けません。'
      @money = 0
    elsif @money == 2000
      puts '2000円札は使えません。'
      @money = 0
    elsif @money >= 5000
      puts 'そんな大金は受け取れません。'
      puts '(5000円以上は使えません。)'
      @money = 0
    end
  end
  end

#    while money.to_i >= 100
#      puts '「お茶」、「紅茶」、「炭酸」、「コーラ」から商品を選んでください。'
#      choice = gets.chomp
#      
#      lucky_number = rand(3)
#
#      if choice == 'お茶' || choice == '紅茶' || choice == '炭酸' || choice == 'コーラ'
#        if lucky_number == 0
#          2.times do
#            puts '-----ガコン！'
#            puts '-----『' + choice + '』' + 'を手に入れました。'
#          end
#          puts 'ラッキーなことに2本出てきました。'
#        else
#          puts '-----ガコン！'
#          puts '-----『' + choice + '』' + 'を手に入れました。'
#        end
#        money = money.to_i - 100
#        puts '残りは' + money.to_s + '円です。'
#      else
#        puts 'その商品はありません。'
#      end
#
#      if choice == 'おつり'
#        puts 'おつりは' + money.to_s + '円です。'
#        break
#      end
#
#      if money.to_i < 100
#        puts 'お金が足りません。'
#        break
#      end
#    end
end

puts '自動販売機があります。'
Jihanki.new.money
