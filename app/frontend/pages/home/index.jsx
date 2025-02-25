import { Button, Text } from "@switchdreams/ui";
import React from "react";
import Header from "../../components/Header";
import Hero from "../../components/Hero";
import Timeline from "../../components/Timeline";

const Index = ({language, languageOptions, personalInfo}) => {

  const events = [
    {
      title: "Title 1",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque non tempor tortor. Sed euismod, neque a cursus vehicula"
    },
    {
      title: "Title 2",
      description: "Description 2"
    },
    {
      title: "Title 2",
      description: "Description 2"
    },
    {
      title: "Title 2",
      description: "Description 2"
    },
    {
      title: "Title 2",
      description: "Description 2"
    }
  ]
  return (
    <div className="bg-[#F1FAEE] w-full text-black">
      <Header language={language} languageOptions={languageOptions} />
      <div className="pt-32">
        <Hero personalInfo={personalInfo}/>
      </div>

      <div className="flex flex-col items-start justify-start ">
        <Timeline 
          events={events}
        />
      </div>
    </div>
  );
}

export default Index;