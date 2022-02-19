import api from './api-config'

export const getAllZoos = async () => {
  const resp = await api.get('/zoos');
  return resp.data;
}

export const getOneZoo = async (id) => {
  const resp = await api.get(`/zoos/${id}`);
  return resp.data;
}

export const postZoo = async (zooData) => {
  const resp = await api.post('/zoos', zooData);
  return resp.data;
}

export const putZoo = async (id, zooData) => {
  const resp = await api.put(`/zoos/${id}`, zooData);
  return resp.data;
}

export const deleteZoo = async (id) => {
  const resp = await api.delete(`/zoos/${id}`);
  return resp.data;
}