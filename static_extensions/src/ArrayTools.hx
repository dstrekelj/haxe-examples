package;

class ArrayTools
{
    /**
     * Returns random element from array. Element index is calculated in range
     * [`min`, `max`>. Default values are [0, array length>.
     * @param   a   Array
     * @param   min Minimum index value, included
     * @param   max Maximum index value, excluded
     * @param   Element
     */
    public static function getRandomElement<T>(a : Array<T>, min : Int = 0, max : Int = -1) : T
    {
        if (max == -1)
        {
            max = a.length;
        }
        var i : Int = min + Std.int(Math.random() * (max - min));
        return a[i];
    }

    /**
     * Combines two arrays into an array of pairs. The resulting array is the
     * length of the largest of two provided arrays. Arrays must be same type.
     * @param   a   First array
     * @param   b   Second array
     * @return  Array of two-element arrays
     */
    public static function zip<T>(a : Array<T>, b : Array<T>) : Array<Array<T>>
    {
        var c = new Array<Array<T>>();
        var l = a.length > b.length ? a.length : b.length;
        for (i in 0...l)
        {
            c.push([a[i], b[i]]);
        }

        return c;
    }
}
