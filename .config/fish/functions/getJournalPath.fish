function getJournalPath
set date (date)
set day (date --date=$date "+%d")
set month (date --date=$date "+%m")
set year (date --date=$date "+%Y")
echo "$HOME/writing/journal/$year/$month/$year-$month-$day.adoc"
end
