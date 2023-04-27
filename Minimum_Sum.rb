def couting_sort (a =[9,8,7,6], min=0,max=10)
    if min>max
        return "invalid range"
    end

    n=max-min+1
    count=array.new(n,0)
    len=a.length
    output=Array.new(len)

    