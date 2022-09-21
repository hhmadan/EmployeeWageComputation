#UC8_StoreDailyWageAndTotalWage

is_PartTime=1;
is_FullTime=2;
MaxHrs_inMonth=10;
empRatePerHr=20;
numWorkingDays=20;
totalEmpHr=0;
totalWorkingDays=0;

function getWorkingHours() {
   case $1 in
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
 echo $empHrs;
}

while [[ $totalempHrs -lt $MaxHrs_inMonth &&
         $totalWorkingDays -lt $numWorkingDays ]]
do
      	((totalWorkingDays++))
      	empHrs="$( getWorkingHours $((RANDOM%3)) )"
      	totalempHrs=$(($totalempHrs+$empHrs))
	dailyWage[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done
totalSalary=$(($totalempHrs*$empRatePerHr))
echo "Daily Wages: ${dailyWage[@]}"
echo "Total Salary is: $totalSalary"
