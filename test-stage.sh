echo "------------ Test Started -----------"
result=`grep "SERVER_ADDR" src/index.php| wc -l`
echo $result
if [ "$result" = "       1" ]
then
   echo "Test Ok"
else
   echo "Test failed"
   exit 1
fi
echo "----------- Test finished -----------"