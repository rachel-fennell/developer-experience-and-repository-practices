## Sharing booking rules

Share booking-rules with the donations app as a published package. The donations team can choose when to install a newer version

# Trade-offs

1. With a published package, each app uses a named version. Someone must publish updates and manage access to the package registry
2. The donations team must bring in updates themselves
3. Copying and pasting is quick but the two copies can become different. A bug fix might be added to one and missed in the other
4. Since both repos need the same code, a published package is the clearest way to share updates while letting each team choose when to upgrade