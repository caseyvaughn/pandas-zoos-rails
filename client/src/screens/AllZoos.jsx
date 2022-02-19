import React from 'react';
// import { Link } from 'react-router-dom';

export default function allZoos(props) {
  const { allZoos } = props;
  return (
    <div>
      <div className="card-list">
        {allZoos.map(zoo => (
          <React.Fragment key={zoo.id}>
            {/* <Link to={`/zoos/${zoo.id}`}> */}
              <h1>{zoo.name}</h1>
              <h2>{zoo.city}</h2>
            {/* </Link> */}
          </React.Fragment>
        ))}
      </div>
      </div>
  )
}