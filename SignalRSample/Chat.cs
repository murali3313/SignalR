using Microsoft.AspNet.SignalR;

namespace SignalRSample
{
    public class Chat : Hub
    {
        public void Send(string message)
        {
            Clients.All.addMessage(message);
        }
    }
}