describe("model", function() {
  describe("model.charIsCorrect", function() {
    xit("should return true if letter matches marking letter in text", function() {
      expect(model.charIsCorrect('W')).toBe(true);
    });

    xit("should return false if letter does not match marking letter in text", function() {
      expect(model.charIsCorrect('p')).toBe(false);
    });

  });
});

describe("keyPressed()", function() {
  it("should return a letter when passed a keycode", function(){
    var key = keyPressed(81);
    expect(key).toEqual("Q");
  });
});

describe("Timer", function() {
  var timer;
  beforeEach(function() {
    timer = new Timer();
  });

  describe('#start', function() {
    it('sets the startTime to whatever time it is now', function() {
      var currentTime = new Date().getTime();
      timer.start();
      expect(timer.startTime).toEqual(currentTime);
    });
  });

  describe('#end', function() {
    it("sets the endTiem to whatever time it is now", function() {
      var currentTime = new Date().getTime();
      timer.end();
      expect(timer.endTime).toEqual(currentTime);
    });
  });

  describe('#duration', function() {
    it("is 0 if it hadn't been started", function() {
      expect(timer.duration()).toEqual(0);
    });
    it('is equal to the endTime minus the startTime', function() {
      timer.startTime = 3;
      timer.endTime = 5;
      expect(timer.duration()).toEqual(2);
    })
  });
});

describe("numberOfWords()", function() {
  var string = "With great power comes great responsibility.";
  it("should calculate the correct number of words in test string", function() {
    expect(numberOfWords(string)).toEqual(6);
  });
});

describe("wordsPerMinute()", function() {
  var string = "With great power comes great responsibility.";
  it("should return a wpm count", function(){
    expect(wordsPerMinute(60, string)).toEqual(6);
  });
});

describe("accuracyRating()", function() {
  var user_typed = 68;
  var actual_text = "With great power comes great responsibility.";
  it("should return an accuracy rating", function() {
    expect(accuracyRating(user_typed, actual_text)).toEqual(Math.floor((44/68) * 100));
  });
});
