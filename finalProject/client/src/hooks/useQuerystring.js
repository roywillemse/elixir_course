import { useLocation } from 'react-router-dom';

export default function useQuerystring(key) {
  const querystring = new URLSearchParams(useLocation().search);
  return querystring.get(key);
}
