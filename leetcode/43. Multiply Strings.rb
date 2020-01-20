# source : https://leetcode.com/problems/multiply-strings/
# @param {String} num1
# @param {String} num2
# @return {String}
=begin
def multiply(num1, num2)
    (num1.to_i * num2.to_i).to_s
end
=end

def convert_string_to_int(num)
    number=0
    num.each_byte{ |x| number=number*10+(x-48)}
    number
end
def convert_int_to_string(int)
    ascii={
        0 =>"0",
        1 =>"1",
        2 =>"2",
        3 =>"3",
        4 =>"4",
        5 =>"5",
        6 =>"6",
        7 =>"7",
        8 =>"8",
        9 =>"9",
    }
    return ascii[int%10] if int <10
    str=""
    while int !=0
        str=ascii[int%10]+str
        int/=10
    end
    str
end
def multiply(num1, num2)
    number1 = convert_string_to_int(num1)
    number2 = convert_string_to_int(num2)
    convert_int_to_string(number1*number2)
end
