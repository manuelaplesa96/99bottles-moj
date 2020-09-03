class Bottles
    # def verse(num)
    #     "#{num == 0 ? 'No more' : num} bottle#{'s' if num != 1}" +
    #     " of beer on the wall, " +
    #     "#{num == 0 ? 'no more' : num} bottle#{'s' if num != 1} of beer.\n" +
    #     "#{num > 0 ? "Take #{num > 1 ? 'one' : 'it'} down and pass it around" : "Go to the store and buy some more"}, " + 
    #     "#{num-1 < 0 ? 99 : num-1 == 0 ? 'no more' : num-1} bottle#{'s' if num-1 != 1} of beer on the wall.\n"
    # end

    # def verses(n,m)
    #     n.downto(m).map { |i| verse(i) }.join("\n")
    # end

    # def song
    #     verses(99,0)
    # end

    def verse(num)
        case num
        when 0
            "No more bottles of beer on the wall, " +
            "no more bottles of beer.\n" +
            "Go to the stroe and buy some more, " +
            "99 bottles of beer on the wall.\n"
        when 1
            "1 more bottle of beer on the wall, " +
            "1 more bottle of beer.\n" +
            "Take it down and pass it around, " +
            "no more bottles of beer on the wall.\n"
        when 2
            "2 more bottles of beer on the wall, " +
            "2 more bottles of beer.\n" +
            "Take one down and pass it around, " +
            "1 bottle of beer on the wall.\n"
        else
            "#{num} more bottles of beer on the wall, " +
            "#{num} more bottles of beer.\n" +
            "Take one down and pass it around, " +
            "#{num - 1} bottle of beer on the wall.\n"
        end
    end

    def verses(start,end)
        start.downto(end).collect {|i| verse(i)}.join("\n")
    end

    def song
        verses(99,0)
    end
end