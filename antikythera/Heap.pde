public class Heap 
{
  //instance vars
  private ArrayList<Enemy> _heap; //underlying container is array of Integers

  /*****************************************************
   * default constructor  ---  inits empty heap
   *****************************************************/
  public Heap() 
  { 
    _heap = new ArrayList<Enemy>();
  }

  /*****************************************************
   * toString()  ---  overrides inherited method
   * Returns either 
   * a) a level-order traversal of the tree (simple version)
   * b) ASCII representation of the tree (bit more complicated, much more fun)
   *****************************************************/
  public String toString() 
  {
    String retStr = ""; 
    for (int i = 0; i < _heap.size(); i++) {
      retStr += _heap.get(i);
      retStr += " ";
    }
    return retStr;
  }//O(1)


  /*****************************************************
   * boolean isEmpty()
   * Returns true if no meaningful elements in heap, false otherwise
   *****************************************************/
  public boolean isEmpty() 
  { 
    return _heap.isEmpty();
  } //O(1)


  /*****************************************************
   * Integer peekMin()
   * Returns min value in heap
   * Postcondition: Heap remains unchanged.
   *****************************************************/
  public Enemy peekMin()
  {
    return _heap.get(0);
  } //O(1)


  /*****************************************************
   * add(Integer) 
   * Inserts an element in the heap
   * Postcondition: Tree maintains heap property.
   * Algo: If heap is empty, add addVal at index 0 and it becomes the root. If the addVal is smaller than the root, insert addVal at index 0 so now it becomes the root. All the already existing elements get pushed one spot to the right. Else, traverse through the li       st. When addVal < the value at the current index, add addVal at that index. Push all the other elements one spot to the right. 
   *****************************************************/
  public void add( Enemy addVal ) 
  {
    _heap.add(addVal);

    int parent = (_heap.size() - 1) / 2;
    int newChild = _heap.size() - 1;

    while (parent >= 0 ) {
      if (_heap.get(parent).compareTo(addVal) >= 0) 
        swap(parent, newChild);
      else
        break;
      newChild = parent;
      parent = (parent - 1) / 2;
    }
  } //O(n)


  /*****************************************************
   * removeMin()  ---  means of removing an element from heap
   * Removes and returns least element in heap.
   * Postcondition: Tree maintains heap property.
   * Algo: Swap the root (least element in the heap) with the element at the last index of the array. Remove the element at the last ind       ex. Now, heapify the heap. Swap the element at the root with its child at position 2n+1 since 2n+1 will always be the lesser child.       Continue swapping until the element at 2n+1 is greater than the current one or is null. 
   *****************************************************/
  public Enemy removeMin() 
  {
    if ( _heap.size() == 0 ) 
      return null;

    //store root value for return at end of fxn
    Enemy retVal = peekMin();

    //store val about to be swapped into root
    Enemy foo = _heap.get( _heap.size() - 1);

    //swap last (rightmost, deepest) leaf with root
    swap( 0, _heap.size() - 1 );

    //lop off last leaf
    _heap.remove( _heap.size() - 1);

    // walk the now-out-of-place root node down the tree...
    int pos = 0;
    int minChildPos;

    while ( pos < _heap.size() ) {

      //choose child w/ min value, or check for child
      minChildPos = minChildPos(pos);

      //if no children, then i've walked far enough
      if ( minChildPos == -1 ) 
        break;
      //if i am less than my least child, then i've walked far enough
      else if ( foo.compareTo( _heap.get(minChildPos) ) <= 0 ) 
        break;
      //if i am > least child, swap with that child
      else {
        swap( pos, minChildPos );
        pos = minChildPos;
      }
    }
    //return removed value
    return retVal;
  }//O(logn)


  /*****************************************************
   * minChildPos(int)  ---  helper fxn for removeMin()
   * Returns index of least child, or 
   * -1 if no children, or if input pos is not in ArrayList
   * Postcondition: Tree unchanged
   *****************************************************/
  private int minChildPos( int pos ) 
  {
    int retVal;
    int lc = 2*pos + 1; //index of left child
    int rc = 2*pos + 2; //index of right child

    //pos is not in the heap or pos is a leaf position
    if ( pos < 0 || pos >= _heap.size() || lc >= _heap.size() )
      retVal = -1;
    //if no right child, then left child is only option for min
    else if ( rc >= _heap.size() )
      retVal = lc;
    //have 2 children, so compare to find least 
    else if ( _heap.get(lc).compareTo(_heap.get(rc)) < 0 )
      retVal = lc;
    else
      retVal = rc;
    return retVal;
  }//O(1)


  //************ aux helper fxns ***************
  private Enemy minOf( Enemy a, Enemy b ) 
  {
    if ( a.compareTo(b) < 0 )
      return a;
    else
      return b;
  }

  //swap for an ArrayList
  private void swap( int pos1, int pos2 ) 
  {
    _heap.set( pos1, _heap.set( pos2, _heap.get(pos1) ) );
  }
}

//***************************************