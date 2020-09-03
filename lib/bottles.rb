class Bottles
    def verse(num)
        "#{num == 0 ? 'No more' : num} bottle#{'s' if num != 1}" +
        " of beer on the wall, " +
        "#{num == 0 ? 'no more' : num} bottle#{'s' if num != 1} of beer.\n" +
        "#{num > 0 ? "Take #{num > 1 ? 'one' : 'it'} down and pass it around" : "Go to the store and buy some more"}, " + 
        "#{num-1 < 0 ? 99 : num-1 == 0 ? 'no more' : num-1} bottle#{'s' if num-1 != 1} of beer on the wall.\n"
    end

    def verses(n,m)
        n.downto(m).map { |i| verse(i) }.join("\n")
    end

    def song
        verses(99,0)
    end
end