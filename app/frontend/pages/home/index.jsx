import { Button, Text } from "@switchdreams/ui";
import React from "react";
import Header from "../../components/Header";

const Index = ({language, languageOptions}) => {
  return (
    <div className="bg-[#101E42] h-screen w-full text-white">
      <Header language={language} languageOptions={languageOptions} />
    </div>
  );
}

export default Index;