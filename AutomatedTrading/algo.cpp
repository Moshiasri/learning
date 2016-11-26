//  Algo.cpp
//
// Sample Algorithm in STL
//

#include <vector>
#include <iostream>
#include <algorithm>
#include <time.h>

using namespace std;

void print (const vector<int>& v)
{ //Print the vector

  // Create vector iterator
  vector<int>::const_iterator i;

  cout << "[";

  // Print every integer in the vector
  for (i=v.begin(); i!=v.end();i++) cout << *i << ", ";
  cout << "]" << endl;
}

int main()
{
  // Create a 'seed' at the current time so that
  // the random numbers will be different each time
  // the generator is run
  srand((unsigned) time (NULL));

  int Size = 5;
  // Create vectors and fill with random numbers
  vector<int> v1, v2;
  int i;
  for (i=0; i<= Size; i++)
    v1.push_back(rand());
  for (i=0; i< Size; i++)
    v2.push_back(rand());

  cout << "Two random lists" << endl;
  print(v1);
  print(v2);

  // Sort the lists
  sort(v1.begin(), v1.end());
  sort(v2.begin(), v2.end());

  cout << "Two sorted lists" << endl;
  print(v1);
  print(v2);

  // Merge the two lists to a thrid lists
  vector<int> v3(v1.size()+v2.size());
  cout << endl << "Merge the two lists" <<endl;
  merge(v1.begin(), v1.end(), v2.begin(), v2.end(), v3.begin());
  print(v3);

  return 0;
}
