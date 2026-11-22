# Developer experience baseline

1. Time to first successful run
Target: Under 15 minutes, with most of the time spent downloading dependencies
Measure: Start a timer before cloning; stop when the app responds. Follow only the README and save the timestamps and output
2. Manual setup steps
Target: No more than two commands after cloning
Measure: Count each command, file edit and click required by the documented setup
3. Inner-loop time
Target: A source change is visible in the running app within 5 seconds
Measure: Save a small UI or API change and time until it appears in the browser or response
4. Test feedback time
Target: Complete local unit-test suite finishes within 60 seconds
Measure: Time the documented full unit-test command from a clean, installed checkout


