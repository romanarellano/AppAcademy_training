class Timer
  attr_accessor :seconds
  
 
def initialize(number=0)
  @seconds = number
end
  def time_string()
      time  = ['','','']
      
   
    if      @seconds >= 3600
        if  @seconds < 36000
            time[0]<<'0'
        end
            time[0] << (@seconds / 3600).to_s
            @seconds = @seconds  % 3600 
      
          
        if  @seconds < 600
            time[1] << '0'
        end
            time[1] <<   (@seconds/ 60).to_s
            @seconds = @seconds % 60 
        if  @seconds < 10
            time[2] << '0'
        end
            time[2] << @seconds.to_s
     
       
    elsif   @seconds >= 60
            time[0] << '00'
        if  @seconds < 600 
            time[1] << '0'
        end
            time[1] <<  (@seconds / 60).to_s
            @seconds = @seconds % 60 
        if  @seconds < 10
            time[2] << '0'
        end
            time[2] << @seconds.to_s
     
    else 
            time[0] << '00'
            time[1] << '00'
        if  @seconds < 10
            time[2] << '0'
        end
            time[2] << @seconds.to_s
     
       
    end
            time.join(':')
end
end