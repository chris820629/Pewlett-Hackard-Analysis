# Pewlett-Hackard-Analysis
## Overview of the analysis
### The purpose of this project is to anaylze the current and past employmeny status
- 1st task: determine number of retiring employees per title
- 2nd task: identify employees who are eligible to participate in a mentorhsip program
## Results
- from the retirement title data, most of the titles are falling in engineer, individual contributor categories
![retirement_titles.png](https://github.com/chris820629/Pewlett-Hackard-Analysis/blob/main/Resources/retirement_titles.png) 
- from retiring title data, both senior engineer and senior staff engineer are the most titles to retire. Managers seem to be the least amount of title to retire comparing to other individual contributors
![retiring_titles.png](https://github.com/chris820629/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles.png) 
- the data from unique titles also validates the previous data where most of the current employees have the title of either senior or senior staff engineer. 
![unique_titles.png](https://github.com/chris820629/Pewlett-Hackard-Analysis/blob/main/Resources/unique_titles.png) 
- the mentorship program seems to have the most diverse titles even though the filter applied to a specific range of birth date in 1965. Showing that the mentorship program has greatly versatile human resources to carry out mentorship for employees at any level
![mentorship_eligibility.png](https://github.com/chris820629/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_eligibility.png) 
## Summary
- There will be 41380 titles to be filled as the "silver tsunami" begins to impact 
below is the queries used to determine the count /
"select count(*)
from retirement_info"
- The mentorship program will only have 1549 participants which is way less than the current employee count
below is teh queries used to determine the count/
"select count(*)
from retirement_info" 





