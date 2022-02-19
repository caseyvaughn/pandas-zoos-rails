import React, { useState, useEffect } from 'react';
import { Route, useNavigate, Routes } from 'react-router-dom';
import { getAllZoos, deleteZoo, postZoo, putZoo } from '../services/zoos';
import Zoos from "../screens/AllZoos"
import ZooDetail from '../screens/ZooDetail';
// client/src/screens/AllZoos.jsx

// import Cats from '../../screens/zoos/zoos';
// import CatDetail from '../../screens/CatDetail/CatDetail';
// import CatCreate from '../../screens/CatCreate/CatCreate';
// import CatEdit from '../../screens/CatEdit/CatEdit';

export default function ZoosContainer() {
  const [allZoos, setAllZoos] = useState([]);
  const navigate = useNavigate();

  useEffect(() => {
    fetchZoos();
  }, [])

  const fetchZoos = async () => {
    const zoos = await getAllZoos();
    setAllZoos(zoos);
    // console.log(allZoos)
  }

  // const createZoo = async (zooData) => {
  //   const newZoo = await postZoo(zooData);
  //   setAllZoos(prevState => ([
  //     ...prevState,
  //     newZoo
  //   ]));
  //   navigate('/zoos');
  // }
  // const updateZoo = async (id, zooData) => {
  //   const updatedZoo = await putZoo(id, zooData);
  //   setAllZoos(prevState => prevState.map(zoo => {
  //       return zoo.id === Number(id) ? updatedZoo : zoo
  //     })
  //   )
  //   navigate('/zoos');
  // }

  // const removeZoo = async (id) => {
  //   await deleteZoo(id);
  //   setAllZoos(prevState => prevState.filter(zoo => zoo.id !== id));
  //   navigate('/zoos');
  // }

  return (
    <>
      <Routes>
        {/* <Route path='/new' element={
          <ZooCreate
            createZoo={createZoo}
          />
        } /> */}
  
        {/* <Route path='/:id/edit' element={
          <ZooEdit
            updateZoo={updateZoo}
            allZoos={allZoos}
          />
        } /> */}
          
        <Route path='/:id' element={
          <ZooDetail
            allZoos={allZoos}
            // removeZoo={removeZoo}
          />
        } />
        
        <Route path='/' element={
          <Zoos
            allZoos={allZoos}
          />
        } />
          
      </Routes>
    </>
  )
}