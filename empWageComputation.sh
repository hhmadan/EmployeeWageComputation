#UC9_storeDayAlongWithDailyWageAndTotalWage
is_PartTime=1;
is_FullTime=2;
MaxHrs_inMonth=10;
empRatePerHr=20;
numWorkingDays=20;
totalEmpHr=0;
totalWorkingDays=0;

declare -A dailyWage

function getWorkingHours() {
   local empCheck=$1
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
 echo $empHrs;
}
function getEmpWage() {
  local empHrs=$1
echo $(($empHrs*$empRatePerHr))
}
while [[ $totalempHrs -lt $MaxHrs_inMonth &&
         $totalWorkingDays -lt $numWorkingDays ]]
do
      	((totalWorkingDays++))
      	empCheck=$((RANDOM%3));
	empHrs="$( getWorkingHours $empCheck )"
      	totalempHrs=$(($totalempHrs+$empHrs))
	dailyWage["Day "$totalWorkingDays]="$( getEmpWage $empHrs )"
done
totalSalary=$(($totalempHrs*$empRatePerHr));
echo ${dailyWage[@]}
echo ${!dailyWage[@]}
