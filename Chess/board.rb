class Board
 PIECE = ["bishop", "rook", "queen", "knight", "king", "pawns"]
  def initialize
    @rows = Array.new(8) {Array.new (8, piece) } #Create a private reader @sentinel
    # piece is a class instance of Piece

  end

  def [](pos)
    x, y = pos
    @rows[x][y]
  end

  def []=(pos, val)
    x, y = pos
    @rows[x][y] = val
  
  end

  def move_piece(color, start_pos, end_pos)
    if start_pos != nil && valid_pos?(end_pos)
      start_pos = end_pos
    else
      #raise an exception
      raise 'There is no piece at start position or this piece cannot move to end position.'
  end

  def valid_pos?(pos)
      return true if @rows[pos] == nil
  end

  def add_piece(piece, pos)
    @rows[pos] = piece
  end

  def checkmate?(color)
    # if black.piece (end(pos)) == king's(pos)
  end 

  def in_check?(color)
  end 

  def find_king(color)

  end 
end 
