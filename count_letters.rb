def count_letters(s)
  Hash[
    s.delete(' ')
     .split('')
     .group_by{ |c| c }
     .map{ |k, v| [k, v.size] }
     .sort_by{ |k, v| [-v, k] }
  ]
end

print count_letters("lighthouse in the house...")