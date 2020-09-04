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
        "#{quantity(num).capitalize} #{container(num)} of beer on the wall, " +
        "#{quantity(num)} #{container(num)} of beer.\n" +
        "#{action(num)}, " +
        "#{quantity(successor(num))} #{container(successor(num))} of beer on the wall.\n"
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

    def pronoun(num)
        if num == 1
            "it"
        else
            "one"
        end   
    end

    def quantity(num)
        if num == 0
            "no more"
        else
            num.to_s
        end
    end

    def action(num)
        if num == 0
            "Go to the store and buy some more"
        else
            "Take #{pronoun(num)} down and pass it around"
        end
    end

    def successor(num)
        if num == 0
            99
        else
            num - 1
        end
    end

end