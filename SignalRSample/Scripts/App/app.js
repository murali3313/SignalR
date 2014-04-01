var SignalRChat = function (connection) {
    this.chat = connection.chat;
    this.chatHub = connection.hub;
};

SignalRChat.prototype = {
    initialize: function() {
        var that = this;
        that.chat.client.addMessage = function(messageFromServer) {
            that.AppendVaueToHistory(messageFromServer);
        };
        that.chatHub.start().done(function() {
            that.AppendVaueToHistory("Connected");
        });
    },
    postMessage: function(message) {
        this.chat.server.send(message);
    },
    AppendVaueToHistory: function(message) {
        var chatHistory = $("#chatHistory");
        var chatHistoryValue = chatHistory.val();
        chatHistoryValue += message + "\r\n";
        chatHistory.val(chatHistoryValue);
    }

};
//var chat;
//$(function () {
//    chat = new SignalRChat($.connection);
//    chat.initialize();
//});

