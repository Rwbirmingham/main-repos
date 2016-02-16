class GrandfatherClock  

    def hourly dong
        time = Time.now.hour		
        hours =[12, 1, 2, 3, 4, 5, 6, 7, 8 , 9 , 10, 11];
		if time >= 13
        hour = time - 12
        end
        (hours[time].to_i).times do 
            dong.call
        end
    end
end

dong = Proc.new do 
   puts 'DONG!'
end 

the_time = GrandfatherClock.new
the_time.hourly dong