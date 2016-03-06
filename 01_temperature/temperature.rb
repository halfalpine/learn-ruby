def ftoc(ftemp)
  ctemp = ftemp * 5 / 9 - 17
  ctemp = ctemp.to_i
  return ctemp
end

def ctof(ctemp)
  ftemp = ctemp * 9 / 5.0 + 32
  ftemp.round(1)
  return ftemp
end