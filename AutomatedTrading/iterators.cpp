//iterator.cpp
//
// Test program to test the following iterators;
// - Bidirectional random access iterators
// - Reverse iterators
// - Const iterators
//

#include <vector>
#include <iostream>

using namespace std;

vector<double> makevector(int size)
{ // Create STL vector with doubles

  vector<double> result; // Create empty vector
  for (int i = 1; i<=size; i++)
  {
    result.push_back(double(i));
  }
  return result;
}
void print(const vector<double>& l)
{ // Print the vector

  cout << "Size of Vector is: " << l.size() << endl;

  // Create vector iterators
  vector<double>::const_iterator i;

  //Print Every character in the vector
  for (i=l.begin(); i!= l.end(); i++)
  {
    cout << (*i) << " ";
  }
  cout << endl;
}
void main ()
{
  // Create a vector with characters
  vector<double> vectorl=makevector(5);

  // Create a bidirectional iterator
  vector<double>::iterator bi;

  // Traverse forward
  cout << "Traverse forward" << endl;
  bi=vectorl.begin();   // Set iterator
  while (bi!=vectorl.endl()) cout << (*bi++) << " ";
  cout << endl << endl;

  // Traverse backward
  cout << "Traverse backward" << endl;
  bi=(vectorl.end());
  do
  {
    cout << (*--bi) << " ";
  }
  while (bi!=vectorl.begin());
  cout << endl << endl;

  // Traverse random
  cout << "Traverse random" << endl;
  bi=vectorl.begin();
  cout << *bi << " ";     // First element
  cout << *(bi+=3) << " ";     // 1+3 is 4th element
  cout << *(bi-=1) << " ";     // 4-1 is 3rd element
  cout << bi[-1] << " ";      //3-1 is 2nd element
  cout << bi[1] << endl << endl       3+1 is 4th element

  // Create bidirectional iterator
  vector<double>::reverse_iterator ri;

  // Traverse reverse forward
  cout << "Traverse reverse forward" << endl;
  ri=vectorl.rbegin();    // Set iterator
  while (ri!=vectorl.rend()) cout << (*ri++) << " ";
  cout << endl << endl;

  //Traverse reverse backward
  cout << "Traverse reverse backward" << endl;
  ri=(vector.rend());
  do
  {
    cout << (*--ri) << " ";
  }
  while (ri!=vectorl.rbegin());
  cout << endl << endl;

  // Traverse reverse random
  cout << "Traverse reverse random" << endl;
  cout << *ri << " ";     // First element
  cout << *(ri+=3) << " ";      //1+3 is 4th element
  cout << *(ri-=1) << " ";      //4-1 is 3rd element
  cout << ri[-1] << " ";        //3-1 is 2nd element
  cout << ri[1] << endl << endl;  //3+1 is 4the element

  //Change element
  cout << "Change first element with mutable iterator" << endl;
  bi=vectorl.begin();
  *bi=double(99);
  print(vectorl);

  // Change element with const iterator
  cout << "Change first element with const iterator" << endl;
  vector<double>::const_iterator ci;
  ci=vector.endl();
  ci--;
  cout << *ci << endl;
}
