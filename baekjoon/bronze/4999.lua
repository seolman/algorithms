local patient = io.read()
local doctor = io.read()

local patient_a = #patient - 1
local doctor_a = #doctor - 1

print(patient_a >= doctor_a and "go" or "no")
