// vector.cpp
//
// Examples to show how sequence containers (vector) work.
//

#include <vector>
#include <string>
#include <iostream.h>

using namespace std;

template <class T> void print(const vector<T>& l)
{	//A generic print function for vectors

	cout  << endl << "Size of vector is " << l.size() << "\n[";
	// Must use const iterator here, otherwise get a commpiler error.
	vector<T>::const_iterator i;
	for (i= l.begin(); i != l.end(); i++)
	{
		cout << *i << ",";
	}
	cout << "]\n";
}
int main()
{
	size_t n = 10;
	double val = 3.14;
	vector<double> vector2(n, val);		//Create n cpoies of val

	cout << "Size of vector2" << vector2.size() << endl;

	print (vector2);

	// Access elements of vector by using the indexing operator []
	// Change some values here and there
	vector2[0] = 2.0;
	vector2[1] = 456.76;
	
	int last_element = vector2.size() - l;
	vector2[last_element] = 55.66;

	print(vector2);

	return 0;
}