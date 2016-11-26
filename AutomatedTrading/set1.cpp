// Set1.cpp
//
// Creating sets. Simple functions for starters.
//
//		1. Create sets with string elements.
//		2. Compare sets with '==' operator
//		3. Swap two sets using the swap() function
// 		4. Assigning sets to each other
//

#include <set>
#include <iostream>
#include <string>

using namespace std;

template <class T> void print(const set <T>& mySet, const string& name)
{	// Print the contents of a set. Notice the presence of a const 
	// iterator.

	cout << endl << name ", size of set" <<mySet.size() << "\n[";
	set<T>::const_iterator i;

	for(i = mySet.begin(); i != mySet.end(); ++i)
	{
		cout << (*i) << ",";
	}
	cout << "]\n";
}
int main()
{
	set<string>first;		//Default constructor
	// Only unique (new elements) added
	first.insert("Interest rate");
	first.insert("Expiry date");
	first.insert("Volatility");

	cout << "First Size: " << first.size() <<endl;
	set<string> second(first);		//Copy constructor

	//	Add extra elements to second set
	second.insert("Interest rate");
	second.insert("Strike price");
	second.insert("Current underlying price");
	second.insert("Cost of carry");

	cout << "Second size: " << second.size() << endl;

	// Are the sets the same?
	if (first == second)
		cout << "Sets have same elements\n";
	else
		cout <<	"Not same elements\n";

	// A bit of swapping
	swap(first, second);

	// Assingment
	set<string> third = first;

	// Now print the sets
	print(first, "First set");
	print(second, "Second set");
	print(third, "Third set");
}