# Examples inspired by David Foster Wallace's # (2/21/1962 to 9/12/2008) _Infinite Jest_

DON_G = { name:  "Don Gately", occupation: "Live-in Staff" }
JOELLE_VD = { name:  "Joelle van Dyne", occupation: "Radio Personality" }
PAT_M =  { name:  "Pat Monteseian", occupation: "Staff" }
KATE_G = { name:  "Kate Gompert", occupation: "None" }
BRUCE_G = { name:  "Bruce Green", occupation: "Fan of Mildred" }

def assembled_aoh
  result = [
    DON_G,
    {:name=>"Joelle van Dyne", :occupation=>"Radio Personality"},
    {:name=>"Pat Monteseian", :occupation=>"Staff"},
    {:name=>"Kate Gompert", :occupation=>"None"},
    {:name=>"Bruce Green", :occupation=>"Fan of Mildred"}
    ]
 
  # Build an array that contains (or, "nests") the constants into a single
  # Array. Ruby constants are denoted by ALL_CAPS
  return result
end

def literal_aoh
  result = [
       {:name=>"Don Gately", :occupation=>"Live-in Staff"},
       {:name=>"Joelle van Dyne", :occupation=>"Radio Personality"},
       {:name=>"Pat Monteseian", :occupation=>"Staff"},
       {:name=>"Kate Gompert", :occupation=>"None"},
       {:name=>"Bruce Green", :occupation=>"Fan of Mildred"}
       ]
  
  # Using Array literal syntax only, build a nested array that uses the data in
  # held in the constants
  return result
end

def aoh_lookup(aoh, row, key)
  assembled_aoh[2][:name]
end

def aoh_update(aoh, row, key, new_value)
  local_copy_of_aoh = assembled_aoh.dup
  local_copy_of_aoh[1][:name] = "Joelle van Dyne (PGOAT)"
  # Update the AoH data at row and key to have the value of new_value
  # Return the updated AoH
   result = local_copy_of_aoh 
  return result[1][:name]
end
