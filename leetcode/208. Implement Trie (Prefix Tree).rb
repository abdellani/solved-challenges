=begin
source: https://leetcode.com/problems/implement-trie-prefix-tree/
=end
class Trie
=begin
    Initialize your data structure here.
=end
    def initialize()
        @root=Hash.new(nil)
        @root["value"]=false
    end


=begin
    Inserts a word into the trie.
    :type word: String
    :rtype: Void
=end
    def insert(word)
        node=@root
        i=0
        while i <word.length 
            char=word[i]
            order=char.ord-97
            if node[order].nil?
                node[order]=Hash.new(nil)
                node[order]["value"]=false
            end
            node=node[order]
            i+=1
        end
        node["value"]=true
    end


=begin
    Returns if the word is in the trie.
    :type word: String
    :rtype: Boolean
=end
    def search(word)
        node=@root
        i=0
        while i <word.length 
            char=word[i]
            order=char.ord-97
            return false if node[order].nil?
            node=node[order]
            i+=1
        end
        return node["value"]       
    end


=begin
    Returns if there is any word in the trie that starts with the given prefix.
    :type prefix: String
    :rtype: Boolean
=end
    def starts_with(prefix)
        node=@root
        i=0
        while i <prefix.length 
            char=prefix[i]
            order=char.ord-97
            return false if node[order].nil?
            node=node[order]
            i+=1
        end
        true
    end

end
