import { useState, useEffect } from "react";
import { useParams } from "react-router-dom"

export default function ZooDetail(props) {
  const [zoo, setZoo] = useState(null)
  const { allZoos} = props
  const { id } = useParams();

  useEffect(() => {
    if (allZoos.length) {
      const oneZoo = allZoos.find((zoo) => zoo.id === Number(id));
      setZoo(oneZoo)
    }
  }, [allZoos, id])
  console.log(allZoos);
  // console.log(oneZoo);

  return (
    <div>
      {zoo &&
        <div>
          <h1>{zoo.name}</h1>
          <h1>{zoo.city}</h1>
        </div>
      }
      
      {/* <h1>{zoo.name}</h1>
      <h2>{zoo.city}</h2> */}
  </div>
)
}