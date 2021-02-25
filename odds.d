import std.stdio;
import std.bigint;
import std.math;
import std.format;
import std.random;

// XXX
ubyte NDigits = 0;

// Input: n is always > 2 and odd
// easy probably prime based on Miller-Rabin
// works on n > 1024
bool isPrime(in BigInt n)
{
    // if (n > 2 && !(n & 1))
    // {
        // return false;
    // }
// 
    // if (n < 10000){
        // return primes.canFind(n);
    // }

	BigInt d = n - 1;
	ulong s = 0;
	while(!(d & 1))
	{
		d /= 2;
		s++;
	}

	outer:
	foreach (immutable _; 0..8)
	{
		ulong a = uniform(2, 1024);
		BigInt b = n / a;
		BigInt x = powmod(b, d, n);
		if (x == 1 || x == n - 1)
			continue;
		foreach (immutable __; 1 .. s)
		{
			x = powmod(x, BigInt(2), n);
			if (x == 1)
				return false;
			if (x == n - 1)
				continue outer;
		}
		return false;
	}
	return true;
}
    bool isMagna(in BigInt n)
    {
        BigInt p = 10;
        while (n >= p)
        {
            auto q = n / p;
            auto r = n % p;
            if(!isPrime(q + r))
            {
                return false;
            }
            p *= 10;
        }
        return true;
    }



void main() {
	// XXX, size
	ubyte[10] a;
	NDigits = a.length;

	for(int i = 0; a.length-2 > i; i++) {
		a[i] = 1;
	}

	auto E = pow(5, NDigits);
	for(int i = 0; E > i; i++) {
		// number is here
		if (isMagna(BigInt(format!"%(%s%)"(a)))) {
			writeln(format!"%(%s%)"(a));
		}
		// ====
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
	writeln("fin.");
}

