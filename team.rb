# クラス定義
class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化するための、特別なメソッド
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  

  # インスタンスが持つメソッド（処理）
  def calc_win_rate
    win.to_f/(win.to_f + lose.to_f)
  end
  def show_team_result
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{calc_win_rate}です。"
  end
end

# インスタンスの生成と、変数への代入

giants = Team.new("Giants", 67, 45, 8)
giants.show_team_result

tigers = Team.new("Tigers", 60, 53, 7)
tigers.show_team_result

dragons = Team.new("Dragons", 60, 55, 5)
dragons.show_team_result

bayStars = Team.new("BayStars", 56, 58, 6)
bayStars.show_team_result

carp = Team.new("Carp", 52, 56, 12)
carp.show_team_result

swallows = Team.new("Swallows", 41, 69, 10)
swallows.show_team_result