#constants for the programm
IS_PART_TIME=1;
IS_FULL_TIME=2;
EMP_RATE_PER_HR=20;
MAX_WORKING_DAYS=20;

# variables
day=1
totalWorkingHrs=0;
totalWorkingDays=0;

function getWorkingHrs(){
	empAttendance=$1
	case $empAttendance in
	0)	workingHrs=0
	;;
	1) workingHrs=4
	;;
	2) workingHrs=8
	;;
esac
echo $workingHrs
}

while [ $day -le $MAX_WORKING_DAYS ]
do
	attendance=$((RANDOM%3))
	dailyWorkingHrs=" $( getWorkingHrs $attendance ) "
	totalWorkingHrs=$(($totalWorkingHrs+$dailyWorkingHrs))
	dailyWage[$day]=$(($dailyWorkingHrs*$EMP_RATE_PER_HR))
	day=$(($day+1))
done

totalWage=$(($totalWorkingHrs*$EMP_RATE_PER_HR))

echo "Total wage : " $totalWage

echo "daily wage array : " ${dailyWage[@]}
