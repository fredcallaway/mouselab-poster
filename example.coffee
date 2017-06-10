trial =  # a trial is defined by a JS object
  type: 'mouselab-mdp'  # use the jsPsych plugin
  graph:  # defines transition and reward functions
    B:
      up: [5, 'A']  # action: [reward, next_state]
      down: [-5, 'C']
    A: {}  # terminal states have no actions
    C: {}
  layout:  # defines position of states
    A: [1, 1]
    B: [1, 2]
    C: [1, 3]
  initial: 'B'  # initial state of player
  stateLabels: {A: 'A', B: 'B', C: 'C'}
  stateDisplay: 'always'  # never, hover, click, always
  edgeLabels: 'reward'  # can be an arbitrary mapping
  edgeDisplay: 'click'  # never, hover, click, always
  edgeClickCost: 1  # subtracted from score whenever
                    # an edge is clicked