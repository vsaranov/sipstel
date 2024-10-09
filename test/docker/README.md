# Testing on Docker
This environment executes `npm test` respectively for each nodejs versions in docker.

## How to test

1. `docker build -f Dockerfile.gcc4.9 -t sipstel-gcc4.9 .`
1. `docker build -f Dockerfile.pjsip  -t sipstel-pjsip .`
1. `docker-compose build`
1. `docker-compose up`
  ```
then you'll get the following results;
...
sipstel10_1  | PASS test/Sipstel.test.js
sipstel10_1  |   sipstel
sipstel10_1  |     ✓ check static properties (18ms)
sipstel10_1  |     ✓ initialize pjsip (92ms)
sipstel10_1  |     ✓ set up a transport to listen for incoming connections, defaults to UDP (7ms)
sipstel10_1  |     ✓ set up a SIP account, we need at least one (14ms)
sipstel10_1  |     ✓ set up listener (1ms)
sipstel10_1  |     ✓ make an audio player (1ms)
sipstel10_1  |     ✓ make an audio recorder (2ms)
sipstel10_1  |     ✓ finalize the pjsip initialization phase
sipstel10_1  |     ✓ wait for any events (3003ms)
sipstel10_1  |
sipstel10_1  | Test Suites: 1 passed, 1 total
sipstel10_1  | Tests:       9 passed, 9 total
sipstel10_1  | Snapshots:   12 passed, 12 total
sipstel10_1  | Time:        5.124s
sipstel10_1  | Ran all test suites.
sipstel10_1  | ======================================================
sipstel10_1  | ======================== GOOD ========================
sipstel10_1  | ======================================================
sipstel8_1   | PASS test/Sipstel.test.js
sipstel8_1   |   sipstel
sipstel8_1   |     ✓ check static properties (16ms)
sipstel8_1   |     ✓ initialize pjsip (12ms)
sipstel8_1   |     ✓ set up a transport to listen for incoming connections, defaults to UDP (2ms)
sipstel8_1   |     ✓ set up a SIP account, we need at least one (2ms)
sipstel8_1   |     ✓ set up listener (1ms)
sipstel8_1   |     ✓ make an audio player
sipstel8_1   |     ✓ make an audio recorder (1ms)
sipstel8_1   |     ✓ finalize the pjsip initialization phase (1ms)
sipstel8_1   |     ✓ wait for any events (3004ms)
sipstel8_1   |
sipstel8_1   | Test Suites: 1 passed, 1 total
sipstel8_1   | Tests:       9 passed, 9 total
sipstel8_1   | Snapshots:   12 passed, 12 total
sipstel8_1   | Time:        4.946s
sipstel8_1   | Ran all test suites.
sipstel8_1   | ======================================================
sipstel8_1   | ======================== GOOD ========================
sipstel8_1   | ======================================================
sipstel9_1   | PASS test/Sipstel.test.js
sipstel9_1   |   sipstel
sipstel9_1   |     ✓ check static properties (13ms)
sipstel9_1   |     ✓ initialize pjsip (10ms)
sipstel9_1   |     ✓ set up a transport to listen for incoming connections, defaults to UDP (2ms)
sipstel9_1   |     ✓ set up a SIP account, we need at least one (2ms)
sipstel9_1   |     ✓ set up listener (1ms)
sipstel9_1   |     ✓ make an audio player
sipstel9_1   |     ✓ make an audio recorder (1ms)
sipstel9_1   |     ✓ finalize the pjsip initialization phase
sipstel9_1   |     ✓ wait for any events (3005ms)
sipstel9_1   |
sipstel9_1   | Test Suites: 1 passed, 1 total
sipstel9_1   | Tests:       9 passed, 9 total
sipstel9_1   | Snapshots:   12 passed, 12 total
sipstel9_1   | Time:        4.676s
sipstel9_1   | Ran all test suites.
sipstel9_1   | ======================================================
sipstel9_1   | ======================== GOOD ========================
sipstel9_1   | ======================================================
docker_sipstel10_1 exited with code 0
docker_sipstel8_1 exited with code 0
docker_sipstel9_1 exited with code 0
```
