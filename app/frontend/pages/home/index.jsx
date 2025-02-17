import { Button, Text } from "@switchdreams/ui";
import React from "react";
import Header from "../../components/Header";
import Hero from "../../components/Hero";

const Index = ({language, languageOptions, personalInfo}) => {
  return (
    <div className="bg-[#101E42] h-screen w-full text-white">
      <Header language={language} languageOptions={languageOptions} />
      <div className="pt-32">
        <Hero personalInfo={personalInfo}/>
      </div>
    </div>
  );
}

export default Index;