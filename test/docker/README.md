# Testing on Docker
This environment executes `npm test` respectively for each nodejs versions in docker.

## How to test

1. `docker build -f Dockerfile.gcc4.9 -t sipster-gcc4.9 .`
1. `docker build -f Dockerfile.pjsip  -t sipster-pjsip .`
1. `docker-compose build`
1. `docker-compose up`
  ```
then you'll get the following results;
...
sipster10_1  | PASS test/Sipster.test.js
sipster10_1  |   sipster
sipster10_1  |     ✓ check static properties (18ms)
sipster10_1  |     ✓ initialize pjsip (92ms)
sipster10_1  |     ✓ set up a transport to listen for incoming connections, defaults to UDP (7ms)
sipster10_1  |     ✓ set up a SIP account, we need at least one (14ms)
sipster10_1  |     ✓ set up listener (1ms)
sipster10_1  |     ✓ make an audio player (1ms)
sipster10_1  |     ✓ make an audio recorder (2ms)
sipster10_1  |     ✓ finalize the pjsip initialization phase
sipster10_1  |     ✓ wait for any events (3003ms)
sipster10_1  |
sipster10_1  | Test Suites: 1 passed, 1 total
sipster10_1  | Tests:       9 passed, 9 total
sipster10_1  | Snapshots:   12 passed, 12 total
sipster10_1  | Time:        5.124s
sipster10_1  | Ran all test suites.
sipster10_1  | ======================================================
sipster10_1  | ======================== GOOD ========================
sipster10_1  | ======================================================
sipster8_1   | PASS test/Sipster.test.js
sipster8_1   |   sipster
sipster8_1   |     ✓ check static properties (16ms)
sipster8_1   |     ✓ initialize pjsip (12ms)
sipster8_1   |     ✓ set up a transport to listen for incoming connections, defaults to UDP (2ms)
sipster8_1   |     ✓ set up a SIP account, we need at least one (2ms)
sipster8_1   |     ✓ set up listener (1ms)
sipster8_1   |     ✓ make an audio player
sipster8_1   |     ✓ make an audio recorder (1ms)
sipster8_1   |     ✓ finalize the pjsip initialization phase (1ms)
sipster8_1   |     ✓ wait for any events (3004ms)
sipster8_1   |
sipster8_1   | Test Suites: 1 passed, 1 total
sipster8_1   | Tests:       9 passed, 9 total
sipster8_1   | Snapshots:   12 passed, 12 total
sipster8_1   | Time:        4.946s
sipster8_1   | Ran all test suites.
sipster8_1   | ======================================================
sipster8_1   | ======================== GOOD ========================
sipster8_1   | ======================================================
sipster9_1   | PASS test/Sipster.test.js
sipster9_1   |   sipster
sipster9_1   |     ✓ check static properties (13ms)
sipster9_1   |     ✓ initialize pjsip (10ms)
sipster9_1   |     ✓ set up a transport to listen for incoming connections, defaults to UDP (2ms)
sipster9_1   |     ✓ set up a SIP account, we need at least one (2ms)
sipster9_1   |     ✓ set up listener (1ms)
sipster9_1   |     ✓ make an audio player
sipster9_1   |     ✓ make an audio recorder (1ms)
sipster9_1   |     ✓ finalize the pjsip initialization phase
sipster9_1   |     ✓ wait for any events (3005ms)
sipster9_1   |
sipster9_1   | Test Suites: 1 passed, 1 total
sipster9_1   | Tests:       9 passed, 9 total
sipster9_1   | Snapshots:   12 passed, 12 total
sipster9_1   | Time:        4.676s
sipster9_1   | Ran all test suites.
sipster9_1   | ======================================================
sipster9_1   | ======================== GOOD ========================
sipster9_1   | ======================================================
docker_sipster10_1 exited with code 0
docker_sipster8_1 exited with code 0
docker_sipster9_1 exited with code 0
```
