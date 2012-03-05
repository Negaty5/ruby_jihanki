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
    else
      lineup
      gakon
    end
  end
  end

 def list number,name,price
   puts "[#{number}] : #{name}  (#{price}円)"
 end

 def goods number
   goods = []

   goods.push "お茶(COOL)"  #0
   goods.push "お茶(HOT)" #1
   goods.push "無糖コーヒー"  #2
   goods.push "ブレンドコーヒー"  #3
   goods.push "ドクターペッパー"  #4
   goods.push "綾鷹"  #5
   goods.push "アクエリアス"  #6
   goods.push "カロリーメイト(チーズ)"  #7

   goods[number]
 end

 def value number
   value = []

   value.push "110" #0
   value.push "120" #1
   value.push "120" #2
   value.push "120" #3
   value.push "100" #4
   value.push "150" #5
   value.push "150" #6
   value.push "200" #7

   value[number]
 end            

 def lineup
   puts "-----欲しい商品の番号を入力して下さい。-----"
   list(1,"#{goods(0)}　　　　　　　","#{value(0)}")
   list(2,"#{goods(1)} 　　　　　　　","#{value(1)}")
   list(3,"#{goods(2)}　　　　　　","#{value(2)}")
   list(4,"#{goods(3)}　　　　","#{value(3)}")
   list(5,"#{goods(4)}　　　　","#{value(4)}")
   list(6,"#{goods(5)}　　　　　　　　　　","#{value(5)}")
   list(7,"#{goods(6)}　　　　　　","#{value(6)}")
   list(8,"#{goods(7)}　","#{value(7)}")
   puts "[9] : 買い物を終える。"
   puts "==> ".chomp
 end

 def gakon
   select = gets.to_i
   lucky_number = rand(10)
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

jihan = Jihanki.new
#jihan.money

puts jihan.lineup
