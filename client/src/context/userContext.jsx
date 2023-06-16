import { createContext } from "react";

// --------------------------------------------------------------------

export const UserContext = createContext();

export const UserProvider = ({ children }) => {
  const pi = 3.14;

  return <UserContext.Provider value={{ pi }}>{children}</UserContext.Provider>;
};
