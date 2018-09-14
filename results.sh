#!/bin/bash
#author: Keenan Andrea
#built: 9/13/2018
#purpose: bash script that averages the scores of three different judges for three different |
#participants. the averaged scores are held in variables and used in a conditional statement |
#that outputs "Good luck tomorrow" if the variable is greater than 7.5, or outputs "Better   |
#luck next time" if the variable is less than 7.5. according to the average of my three jud- |
#ges scores, all three participants will be continuing the competition tomorrow.             |

JudgeOneScoreOne=7.8
JudgeOneScoreTwo=6.7
JudgeOneScoreThree=8.6

JudgeTwoScoreOne=8.2
JudgeTwoScoreTwo=6.4
JudgeTwoScoreThree=9.1

JudgeThreeScoreOne=7.3
JudgeThreeScoreTwo=9.8
JudgeThreeScoreThree=7.9
 
SJavg=$(echo "scale=1;($JudgeOneScoreOne+$JudgeTwoScoreOne+$JudgeThreeScoreOne)/3.0" | bc) 
MSavg=$(echo "scale=1;($JudgeOneScoreTwo+$JudgeTwoScoreTwo+$JudgeThreeScoreTwo)/3.0" | bc)
GRavg=$(echo "scale=1;($JudgeOneScoreThree+$JudgeTwoScoreThree+$JudgeThreeScoreThree)/3.0" | bc)

echo "Svetlana Jablonski: $JudgeOneScoreOne $JudgeTwoScoreOne $JudgeThreeScoreOne"
echo "average: $SJavg"

if echo "$SJavg > 7.5" | bc -l | grep -q 1
then
	echo "Good luck tomorrow"
else
	echo "Better luck next time"
fi

echo "Mike Smith: $JudgeOneScoreTwo $JudgeTwoScoreTwo $JudgeThreeScoreTwo"
echo "average: $MSavg"

if echo "$MSavg > 7.5" | bc -l | grep -q 1
then
	echo "Good luck tomorrow"
else
	echo "Better luck next time"
fi


echo "Gabriel Russo: $JudgeOneScoreThree $JudgeTwoScoreThree $JudgeThreeScoreThree"
echo "average: $GRavg"

if echo "$GRavg > 7.5" | bc -l | grep -q 1
then
	echo "Good luck tomorrow"
else
	echo "Better luck next time"
fi



