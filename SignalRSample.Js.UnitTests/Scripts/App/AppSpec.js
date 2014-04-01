describe("Test Unit Test", function() {
    it("Test", function () {
        var s = spyOn($, "connection");
        var signalRChat = new SignalRChat(s);
        expect(1).toBe(1);
    });
});