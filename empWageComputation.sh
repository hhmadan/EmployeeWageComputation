echo "Welcome to Employee Wage Computation Program"

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ]
then
#	echo "Employee is Present"
	empRatePerHr=20;
	empHrs=8;
	salary=$(($empRatePerHr*$empHrs))
else
#	echo "Employee is Absent"
	salary=0;
fi
echo "Salary is: $salary"
