# -*- coding: utf-8 -*-

class Jihanki

  def initialize
    puts '自動販売機があります。'
    @money = 0
  end

  def money
  while true
    puts 'お金を入れてください。'
    @money = @money + gets.chomp.to_i
   
    if @money == 0 
      puts 'お金のない人に用はありません。'
      puts 'ご利用ありがとうございました。'
      break
    elsif @money < 10
      puts '10円からしか受け付けません。'
      @money = 0
    elsif @money == 2000
      puts '2000円札は使えません。'
      @money = 0
    elsif @money >= 5000
      puts 'そんな大金は受け取れません。'
      puts '(5000円以上は使えません。)'
      @money = 0
    else
      select
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
     list(1,"#{goods(0)}              ","#{value(0)}")
     list(2,"#{goods(1)}               ","#{value(1)}")
     list(3,"#{goods(2)}            ","#{value(2)}")
     list(4,"#{goods(3)}        ","#{value(3)}")
     list(5,"#{goods(4)}        ","#{value(4)}")
     list(6,"#{goods(5)}                    ","#{value(5)}")
     list(7,"#{goods(6)}            ","#{value(6)}")
     list(8,"#{goods(7)}  ","#{value(7)}")
     puts "[9] : 商品の選択を終了する。"
     puts "--------------------------------------------"
 end
 
 def select
   while true
     lineup
     select = gets.to_i
     @select = select - 1
     lucky_number = rand(10)

     if select == 9
       puts "商品の選択を終了します。"
       puts "-----おつりは #{@money} 円です。"
       @money = 0
       break
     elsif @money < 100
       puts "このままだとお金が足りません。"
       break
     elsif select <= 0 || select >= 10
       puts "その番号はありません。1~9の範囲で選んでください。"
     elsif lucky_number == 0
       2.time do
         gakon
       end
       puts "-----ラッキーなことに2本出てきました＼(＞ヮ＜)／"
       charin
     else
       gakon
       charin
     end
   end
 end

 def gakon
       puts "-----ガコン！"
       puts "-----『#{goods(@select)}』を手に入れました。"
 end

 def charin
       @money = @money - value(@select).to_i
       puts "-----あと #{@money} 円残っています。"

 end
end

jihan = Jihanki.new
puts jihan.money
