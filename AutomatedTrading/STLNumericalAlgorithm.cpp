// STLNumericalAlgorithms
//
// Some of the numeric algorithms in STL. This Library has
// minimal support for numerical analysis
//

#include <vector>
#include <iostream>
#include <numeric>      // For Numeric Algorithms

using namespace std;

int main()
{
  // Create the containers for the Algorithms
  vector<double> vec1(4, 2.0);    // Length 4, all values == 2.0
  vector<double> vec2(4, 4.0);    // Length 4, all values == 4.0

  // The accumulate is a generalisation of summation
  double init = 0.0;
  double summation = accumulate (vec1.begin(), vec1.end(), init);

  cout << "Sum of elements in vector 1: " << summation << endl;

  // Inner product of two vectors
  double ip = inner_product (vec1.begin(), vec1.end, vec2.begin(), init);
  cout << "Inner product of vec1 and vec2: " << ip << endl;

  // Now calculate the partial sum of a vector; result is also a vector
  int size = 6;
  int seed_value  = 2;
  vector<int> vec3(size, seed_value);
  vector<int> result(size);
  partial_sum(vec3.begin(), vec3.end(), result.begin());

  cout << "The partial sum of the vector vec3\n";
  print(result);

  // Compute difference between consequence elements of a vector
  int sz = 10;
  int value = 2;
  vector<int> vec4(sz);

  vector<int>::iterator it;
  for (it = vec4.begin(); it != vec4.end(); it++)
  {
    (*it) = value;
    value += 1;
  }
  vector<int> result2(vec4.size());
  adjacent difference(vec4.begin, vec4.end(), result2.begin());
  cout << "The adjacent difference of the vector vec4\n";

  print(result2);

  return 0;
}
