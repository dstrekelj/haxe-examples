package;

class Main
{
    static function main()
    {
        var p = new sys.io.Process("haxelib", ["list"]);

        var s : String;
        var c : Int = 0;
        do
        {
            try
            {
                s = p.stdout.readLine();
                c++;
            }
            catch (e : haxe.io.Eof)
            {
                break;
            }
        }
        while (true);

        trace("Executed: haxelib list");
        trace("Process id: " + p.getPid());
        trace("Number of libraries listed: " + c);
        trace("Leaving process...");
        trace("Process exit code: " + p.exitCode());
    }
}
