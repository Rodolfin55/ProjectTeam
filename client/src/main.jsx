import React from "react";
import ReactDOM from "react-dom/client";
import { RouterProvider } from "react-router-dom";

// --------------------------------------------------------------------
import { UserProvider } from "./context/userContext";
import { routes } from "./routes/routes";

// CSS
import "./main.css";

// --------------------------------------------------------------------

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <UserProvider>
      <RouterProvider router={routes} />
    </UserProvider>
  </React.StrictMode>
);
