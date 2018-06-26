class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each

    @cups.each_with_index do |cup, idx|
        next if idx == 6 || idx == 13
        4.times do
          cup << :stone
        end
      end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones_to_move = @cups[start_pos].length
    @cups[start_pos] = []
    current_idx = start_pos

    until stones_to_move == 0
      current_idx = (current_idx+1)%14
      current_idx = 0 if current_idx == 13
      @cups[current_idx] << :stone
      stones_to_move -=1
    end

    render
    next_turn(current_idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    return :switch if @cups[ending_cup_idx]
    return :prompt if ending_cup_idx == 6
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups.take(6).all?{|cup| cup.length == 0} || @cups[7..12].all? { |cup| cup.empty? }
  end

  def winner
    player_1_total = @cups[6].length
    player_2_total = @cups[13].length

    case player_1_total <=> player_2_total

    when 1
      return @name1
    when 0
      return :draw
    when -1
      return @name2
    end

  end

end
