import std.stdio;
import std.bigint;
import std.math;

void main() {
	ubyte[3] a = [1,1,0];
	byte NDigits = a.length;

	auto E = pow(5, NDigits);
	for(int i = 0; E > i; i++) {
		writeln(a);
		a[$-1] += 2;
		if (a[$-1] <= 8) {
			continue;
		} else {
			a[$-1] = 0;
		}
		for(int j = a.length-2; j >= 0; j--) {
			a[j] += 2;
			if (a[j] <= 9) {
				break;
			}
			else {
				a[j] = 1;
			}
		}		
		
	}
	// auto s = a.map!(a => a+1));
	writeln("mike");
}

