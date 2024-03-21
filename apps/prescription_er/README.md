# bkmc_patients

list of patients that were observed during duty as a Medical Officer in BKMC-MTI Swabi.

Features:

all patients

each patient

patient ->

date of arrival


cnic

16201-3189992-1 we cannot have two persons with same CNIC -> primary key

id -> 36 char guid


vitals
BP -> 140/80
P -> 75bpm
SpO2 -> 97%
T -> 99F
RR -> 29

bio_data

name
father_name
address
=> Area
=> City
=> Province
=> Country
gender
=> male, female, anyCustom
age => number and unit -> days, months, years [0 -> 100 years]


triage & classification

triage -> like urgency of the care the patient needs
classification
like with which department it relates e.g. peds, medicine, surgery, trauma like nature of the patient


c/c
presentation of the patient to emergency department
and brief history about each complaint
also systemic review

examinations
vitals and full systemic examination


ix

mx
dx
dxp


date a patient observed

duty station on a specific day




what to do so to keep track of changes in the patient object 
Map<DateTime, Change> changes



Change<T> {
T    currentValue
 T   nextValue
}