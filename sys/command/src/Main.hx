package;

class Main
{
    static function main() : Void
    {
        trace("I will now perform an echo.");
        Sys.command("echo", ["ECHO!", "ECHO!", "ECHO!"]);
    }
}
