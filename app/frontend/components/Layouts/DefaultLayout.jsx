import React from "react";

import Footer from "./Footer";
import Header from "./Header";

const DefaultLayout = ({ children }) => {
  return (
    <>
      <Header />
        <div className="relative flex size-full min-h-[calc(100vh-5rem)] flex-col items-center justify-start">
            {children}
        </div>
      <Footer />
    </>
  );
};

export default DefaultLayout;
