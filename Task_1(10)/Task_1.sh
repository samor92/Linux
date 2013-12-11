#!/bin/bash
year="$1"
time="$2"

function isNum()
{
re='^[0-9]+$'
if ! [[ $1 =~ $re ]];
  then
    echo 0
  else
    echo 1
exit 1;
fi
}

if [[ "$year" -eq "" || "$time" -eq "" ]]; 
  then 
    echo "--=== Параметры не переданы. Завершение сценария. ===--"
    exit 0; 
  else 
    echo "Переданные параметры: $year год, $time час(ов)."
    if [[ $( isNum "$time" ) -eq "0"  &&  $( isNum "$year" ) -eq "0" ]] ; 
    then 
      echo "Данные введены некорректно. (Пример корректных данных: 2003 15)."
      echo "--=== Завершение сценария. ===--"
      exit 0;
    fi
fi;
echo "Начальная дата: "$(date --date="$year-01-01" +%Y-%m-%d" "$time:%M:%S," "%a)
echo "Конечная дата:  "$(date --date="$year-01-01 $time hour" +%Y-%m-%d" "%H:%M:%S," "%a);
echo "--=== Сценарий успешно выполнен. ===--"

 
