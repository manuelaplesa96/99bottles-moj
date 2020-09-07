class Bottles

    def bottle_number_for(number)
        if number == 0 
            BottleNumber0
        else
            BottleNumber
        end.new(number)
    end
    
    def verse(number)
        bottle_number = bottle_number_for(number)
        next_bottle_number = bottle_number_for(bottle_number.successor)

        "#{bottle_number} ".capitalize + "of beer on the wall, " +
        "#{bottle_number} of beer.\n" +
        "#{bottle_number.action}, " +
        "#{next_bottle_number} " + "of beer on the wall.\n"
    end

    def verses(start,ending)
        start.downto(ending).collect {|i| verse(i)}.join("\n")
    end
    
    def song
        verses(99,0)
    end

end


class BottleNumber
    attr_reader :number

    def initialize(number)
        @number = number
    end

    def container
        if number == 1
            "bottle"
        else
            "bottles"
        end
    end

    def pronoun
        if number == 1
            "it"
        else
            "one"
        end   
    end

    def quantity
        number.to_s
    end

    def action
        "Take #{pronoun} down and pass it around"
    end

    def successor
        number - 1
    end

    def to_s
        "#{quantity} #{container}"
    end
end


class BottleNumber0 < BottleNumber

    def quantity
        "no more"
    end

    def action
        "Go to the store and buy some more"
    end

    def successor
        99
    end

end