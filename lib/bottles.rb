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
            "Go to the store and buy some more, " +
            "99 bottles of beer on the wall.\n"
        when 1
            "#{num} #{container(num)} of beer on the wall, " +
            "1 #{container(num)} of beer.\n" +
            "Take it down and pass it around, " +
            "no more bottles of beer on the wall.\n"
        else
            "#{num} #{container(num)} of beer on the wall, " +
            "#{num} #{container(num)} of beer.\n" +
            "Take #{pronoun} down and pass it around, " +
            "#{num - 1} #{container(num-1)} of beer on the wall.\n"
        end
    end

    def verses(start,ending)
        start.downto(ending).collect {|i| verse(i)}.join("\n")
    end

    def song
        verses(99,0)
    end

    def container(num)
        if num == 1
            "bottle"
        else
            "bottles"
        end
    end

    # def pronoun(num = :FIXME)
    #     if num == 1
    #         "it"
    #     else
    #         "one"
    #     end
            
    # end

end