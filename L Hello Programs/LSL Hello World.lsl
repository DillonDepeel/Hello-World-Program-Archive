import <string.lsl>
import <console.lsl>


class helloWorld
{
	helloWorld ()
	{
		class console io = new class console();
		class string hello = new class string ("hello world\n");
		io.print (hello);
	}
}
