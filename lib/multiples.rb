def is_multiple_of_3_or_5?(current_number)

  if current_number % 3 == 0 || current_number % 5 == 0
    return true
  else 
    return false
  end
end

def sum_of_3_or_5_multiples (final_number=0)
  
  final_sum = 0

  if final_number == final_number.to_i && final_number >= 0  

    for current_number in (0...final_number)

      if is_multiple_of_3_or_5?(current_number) == true
        final_sum = final_sum + current_number
      else
        current_number = current_number + 1
      end

    end

    return final_sum 

  else

    return nil 
  
  end

end







