import std.string, std.conv, std.stdio;
import std.socket;

void main(string[] args)
{
    string url = args[1];
    auto i = indexOf(url, "://");

    if(i != -1)
    {
        url = url[i + 3 .. $];
    }

    i = indexOf(url, "/");
    string domain;
    
    if(i != -1)
    {
        domain = url[0 .. i];
        url = url[i .. $];
    }
    else
    {
        domain = url;
        url = "/";
    }

    ushort port = 80;

    Socket socket = new TcpSocket(new InternetAddress(domain, port));
    scope(exit) socket.close();

    socket.send("GET " ~ url ~ " HTTP/1.0\r\n" ~ "Host: " ~ domain ~ "\r\n" ~ "\r\n");

    while(true)
    {
        char[] line;
        char[1] buf;
        while(socket.receive(buf))
        {
            line ~= buf;
            if(buf[0] == '\n')
                break;
        }

        if(!line.length)
        {
            break;
        }

        write(line);
    }
}