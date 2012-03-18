# -*- coding: utf-8 -*-

class Jihanki

  def initialize
    puts '自動販売機があります。'
    @money = 0
    goods
  end

  def money
    while true
      puts '-----お金を入れてください。'
      @money += gets.chomp.to_i

      if @money == 0 
        puts '-----お金のない人に用はありません。'
        puts '-----ご利用ありがとうございました。'
        break
      elsif @money < 10
        puts '-----10円からしか受け付けません。'
        @money = 0
      elsif @money%10 != 0
        puts '-----細かいお金は使えません。'
        @money = 0
      elsif @money == 2000
        puts '-----2000円札は使えません。'
        @money = 0
      elsif @money >= 5000
        puts '-----そんな大金は受け取れません。'
        puts '-----(5000円以上は使えません。)'
        @money = 0
      else
        select
      end
    end
  end

  def goods
    @goods = {"お茶(COOL)" => 110,
      "お茶(HOT)" => 120,
      "無糖コーヒー"=> 120,
      "ブレンドコーヒー" => 120,
      "ドクターペッパー" => 100,
      "レモンティー" => 150,
      "アクエリアス" => 150,
      "カロリーメイト(チーズ)" => 200}
  end

  def lineup
    puts "-----欲しい商品の番号を入力して下さい。-----"
    @goods.each_with_index do |(name,value),index|
    puts "[#{index + 1}] : #{name} (#{value}円)"
    end
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
        puts "-----商品の選択を終了します。"
        puts "-----おつりは #{@money} 円です。"
        @money = 0
        break
      elsif select <= 0 || select >= 10
        puts "-----その番号はありません。1~9の範囲で選んでください。"
      elsif @money < @goods.to_a[@select][1].to_i
        puts "-----お金が足りません。"
        break
      elsif lucky_number == 0 || lucky_number == 1
        2.times do
          gakon
        end
        puts "-----ラッキーなことに2本出てきました＼(＞ヮ＜)／"
        charin
      elsif lucky_number == 2
        puts "-----「・・・・・・・・・・・・」"
        puts "-----反応がありません。嫌な予感がします。"
        charin
      else
        gakon
        charin
      end
      puts ''
    end
  end

  def gakon
    puts "-----ガコン！"
    puts "-----『#{@goods.to_a[@select][0]}』を手に入れました。"
    @name = @goods.to_a[@select][0]
  end

  def charin
    @money = @money - @goods.to_a[@select][1].to_i
    puts "-----あと #{@money} 円残っています。"
  end
end

puts Jihanki.new.money
