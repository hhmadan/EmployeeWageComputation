#UC6_CalculatingWagesForaMonthUsingWhileLoop
is_PartTime=1;
is_FullTime=2;
MaxHrs_inMonth=100;
empRatePerHr=20;
numWorkingDays=20;
totalEmpHr=0;
totalWorkingDays=0;


while [[ $totalEmpHr -lt $MaxHrs_inMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	
	case $empCheck in
		$is_FullTime)
			empHrs=8
          		;;
		$is_PartTime)
         		empHrs=4
          		;;
       		*)
         		empHrs=0
          		;;
   	esac
totalEmpHr=$(($totalEmpHr + $empHrs)) 
done

totalSalary=$(($totalEmpHr+$empRatePerHr));
echo "Total Salary is: $totalSalary"
