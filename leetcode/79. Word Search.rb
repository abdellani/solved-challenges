#source : https://leetcode.com/problems/word-search/
=begin
  _   _           _             ____            _           _     _                 
 | | | |   __ _  | |  _   _    / ___|    ___   | |  _   _  | |_  (_)   ___    _ __  
 | | | |  / _` | | | | | | |   \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
 | |_| | | (_| | | | | |_| |    ___) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
  \___/   \__, | |_|  \__, |   |____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|
          |___/       |___/                                                         

=end
def get_next_neighbors(board,x,y,char)
    res=[]
    res<< [x,y-1] if 0<y and board[x][y-1] == char
    res<< [x-1,y] if 0<x and board[x-1][y] == char
    res<< [x+1,y] if x+1<board.length and board[x+1][y] == char
    res<< [x,y+1] if y+1<board.first.length and board[x][y+1] == char    
    res
end
def get_start_points(board, h,l,char)
    points=[]
    (0...h).each do |i|
        (0...l).each do |j|
            points<< [i,j] if board[i][j]== char
        end
    end
    points
end
def check(board,x,y,word,char_index,visited)
    return true if word.length-1 == char_index
    visited<<[x,y]
    neighbors=get_next_neighbors(board,x,y,word[char_index+1]) - visited
    neighbors.each do |neighbor|
        return true if check(board,neighbor[0],neighbor[1],word,char_index+1,visited)
    end
    visited.pop
    return false
end
def exist(board, word)
    h= board.length
    l=board.first.length
    start_points=get_start_points(board, h,l,word[0])
    start_points.each do |point|
        return true if check(board,point[0],point[1],word,0,[])
    end
    false
end
