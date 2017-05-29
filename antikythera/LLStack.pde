import java.util.LinkedList;

public class LLStack<T> implements Stack<T> 
{
  private LinkedList<T> _stack;

  //constructor
  public LLStack() 
  {   
    _stack = new LinkedList<T>();
  }


  //means of insertion
  public void push( T s ) 
  {
    _stack.addFirst(s);
  }


  //means of viewing top element without removing
  public T peek( ) 
  {
    if (_stack.isEmpty()) {
      return null;
    }

    return _stack.getFirst();
  }


  //means of removal
  public T pop( )
  {
    if (_stack.isEmpty()) {
      return null;
    }

    return _stack.removeFirst();
  }


  //chk for emptiness
  public boolean isEmpty() 
  {
    return (_stack.size()==0);
  }
}