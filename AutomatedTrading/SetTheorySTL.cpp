// SetTheroySTL
//
// Creating sets. Simple  funtion for staters.
//
//    1. Create Sets with string elements
//    2. Compare Sets with '==' operator
//    3. Swap two sets using the swap() function
//    4. Assign sets to each other
//

#include<set>
#include<iostream>
#include<string>

using namespace std;

template <class T> void print(const set<T>& mySet, const string& name)
{ //Print the contents of a set.
  cout << endl << name << ",size of set" << mySet.size() << "\n[";

  set<T>:: const_iterator i;

  for  (i = mySet.begin(); i != mySet.end(); ++i)
  {
    cout << (*i) << ",";
  }
  cout << "]\n";
}
int main ()
{
  set<string> first;      // Default constructor

  // Only unique (new elements) added
  first.insert("r");
  first.insert("T");
  first.insert("sigma");

  cout << "First Size: " << first.size() << endl;

  set<string> second (first);   // Copy constructor

  // Add extra elements to second set
  second.insert("r");           //"Insert rate"
  second.insert("K");           //"Strike price"
  second.insert("S");           //"Current underlying price"
  second.insert("b");           //"Cost of carry"

  cout << "Second Size: "<< second.size() << endl;

  // Are the sets the same?
  if (first == second)
    cout << "Sets have same elements\n";
  else
    cout << "Not same elements\n";

  // A bit of swapping
  swap(first, second);

  // Assingment
  set<string> third = first;

  // Now print the sets
  print(first, "First set");
  print(second, "Second set");
  print(third, "Third set");

  // Now create a set representing Executive options
  set<string> execOption(first);
  execOption.insert("lambda");    The jump rate

  print(execOption, "An Executive Option");
}
