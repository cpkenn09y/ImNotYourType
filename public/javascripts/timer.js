function Timer() { }
Timer.prototype = {
  duration: function() {
    if (this.startTime === 0) { return 0; }
    return (this.endTime || new Date().getTime()) - this.startTime;
  },
  startTime: 0,
  endTime: 0,
  start: function() {
    this.startTime = new Date().getTime();
  },
  end: function() {
    this.endTime = new Date().getTime();
  }
};
