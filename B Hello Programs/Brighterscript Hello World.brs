print "hello"
function __MyComp_builder()
    instance = {}
    instance.new = sub()
    end sub
    return instance
end function
function MyComp()
    instance = __MyComp_builder()
    instance.new()
    return instance
end function

function init()
end function
