SELECT state2007data.state, state2007data.yearCount, state2008data.yearCount 
FROM state2007data JOIN state2008data ON (state2007data.state = state2008data.state);
