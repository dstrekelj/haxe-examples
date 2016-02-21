package;

using ArrayTools;

class Main
{
    static function main() : Void
    {
        var names : Array<String> = ['Andy', 'Bob', 'Claire', 'Daisy'];
        var numbers : Array<Int> = [12, 7, 29, 4, 7, 33];

        for (i in 0...20)
        {
            trace(names.getRandomElement() + ", " + numbers.getRandomElement());
        }

        trace([1, 3, 5, 7].zip([2, 4, 6, 8]));
        trace([1, 3, 5, 7].zip([2, 4]));
        trace([2, 4, 6, 8].zip([1, 3]));
    }
}
