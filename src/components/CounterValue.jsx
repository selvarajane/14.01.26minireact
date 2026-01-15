import { useCounter } from '../contexts/CounterContext'
import './CounterValue.css'

const CounterValue = () => {
  const { count } = useCounter()

  return (
    <div className="counter-value-display">
      <p>Counter Value (from separate component): <strong>{count}</strong></p>
    </div>
  )
}

export default CounterValue
