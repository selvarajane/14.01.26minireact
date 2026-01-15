import { useCounter } from '../contexts/CounterContext'
import './CounterDisplay.css'

const CounterDisplay = () => {
  const { count, increment, decrement, reset } = useCounter()

  return (
    <div className="counter-display">
      <h2>Counter with Context</h2>
      <div className="counter-value">
        <p>Current Count: <strong>{count}</strong></p>
      </div>
      <div className="counter-buttons">
        <button onClick={decrement} className="counter-btn decrement-btn">
          Decrement
        </button>
        <button onClick={reset} className="counter-btn reset-btn">
          Reset
        </button>
        <button onClick={increment} className="counter-btn increment-btn">
          Increment
        </button>
      </div>
    </div>
  )
}

export default CounterDisplay
