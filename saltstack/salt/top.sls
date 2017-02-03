base:
  '*': #Run on all nodes!
    - common
  'minion[1-2]':   #Run only on node 1,2
    - application1
  'minion[3-4]':   #Run only on node 3,4
    - application2
