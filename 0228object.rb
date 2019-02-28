# オブジェクトを自作する
class IchijoStudent
  def access_classroom
    puts "教室に入れます"
  end

  def access_hackerspace
    puts "ハッカースペースが使えます"
  end
end
Ichijosei = IchijoStudent.new
Ichijosei.access_classroom
Ichijosei.access_hackerspace


# クラスの継承
class Nanami < IchijoStudent
  def after_school(pocket_money)
    if pocket_money >= 1000 && pocket_money < 2000
      puts "だんごを一本買って食べる"
    elsif pocket_money >= 2000 && pocket_money < 3000
      puts "だんごを二本買って食べる"
      puts "お茶を淹れて団子と食べる"
    elsif pocket_money >= 3000
      puts "だんごを三本買って食べる"
      puts "ハーゲンダッツを買って団子と食べる"
    else
      puts "家に帰って勉強する"
    end
  end
end

nanami = Nanami.new
nanami.after_school(500)
puts "\n"
nanami.access_classroom
nanami.access_hackerspace

# ローカル変数 変数は作った場所のみで有効
price = 200
def tokubai
  price = 150
  puts price
end

puts price
tokubai

# インスタンス変数は同じクラス内ではどこでも使いまわせる
# 下のIchijoOfficeをインスタンス化したら初期値は当日利用者となるように処理されている
class IchijoOffice
  def initialize
    @hackerspace_user = "当日利用者"
  end
  def hackerspace_member(name)
    @hackerspace_user = name
  end
  def admission
    puts "#{@hackerspace_user}の本日の利用を許可します"
  end
end

user = IchijoOffice.new
userA = IchijoOffice.new
userB = IchijoOffice.new

userA.hackerspace_member("Aさん")
userB.hackerspace_member("Bさん")

user.admission
userA.admission
userB.admission
