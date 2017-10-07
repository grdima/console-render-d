#!/usr/bin/rdmd
import std.stdio;
import std.getopt;
import engine;

enum RunConfig {
    server,
    client
};

RunConfig runConfig = RunConfig.client; 


void main(string[] args)
{
    auto helpInformation = getopt(
        args,
        config.caseInsensitive,
        "run|r", "[ client | server ]", &runConfig);

    if(helpInformation.helpWanted){
        defaultGetoptPrinter("Tanks v0.1", helpInformation.options);
    }    


    if(runConfig == RunConfig.client) {
        auto client = new Client();
        client.run(args);
    } else {
        writefln("not implemented!");
    }

            

}
