import { Button, Text } from "@switchdreams/ui";
import React from "react";
import Header from "../../components/Header";

const Index = ({language, languageOptions, personalInfo}) => {
  return (
    <div className="bg-[#101E42] h-screen w-full text-white">
      <Header language={language} languageOptions={languageOptions} />

      <div className="pt-32">
        {personalInfo.map((info) => (
          <div key={info.id}>
            <Text>{info.title}</Text>
            <Text>{info.description}</Text>
          </div>
        ))}
      </div>
    </div>
  );
}

export default Index;