var expect = require("chai").expect;
var server = require("../server");

describe("42 text creator", function () {
  describe("newLine()", function () {
    it("produces a non-empty line", function () {
      expect(server.newLine()).to.equal("1. There is a theory which states that if ever anyone discovers exactly what the Universe is for and why it is here, it will instantly disappear and be replaced by something even more bizarre and inexplicable. There is another theory which states that this has already happened. ");
    });
    it("produces different lines", function () {
      expect(server.newLine()).to.equal("2. Many were increasingly of the opinion that they’d all made a big mistake in coming down from the trees in the first place. And some said that even the trees had been a bad move, and that no one should ever have left the oceans. ");
    });
  })
});
