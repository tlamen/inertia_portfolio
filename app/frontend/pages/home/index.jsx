import { Button, Text } from "@switchdreams/ui";
import React from "react";
import Header from "../../components/Header";
import Hero from "../../components/Hero";
import Timeline from "../../components/Timeline";
import Projects from "../../components/Projects";

const Index = ({language, languageOptions, personalInfo, experiences, public_projects, private_projects}) => {
  const projectTranslations = {
    "en": "Projects",
    "pt": "Projetos",
    "es": "Proyectos"
  }
  return (
    <div className="bg-[#F1FAEE] w-full text-black flex flex-col justify-center items-center">
      <Header language={language} languageOptions={languageOptions} />
      <div className="w-3/4">
        <div className="md:pt-10 pt-52">
          <Hero personalInfo={personalInfo}/>
        </div>

        <div className="flex flex-col items-start justify-start py-12 md:px-10">
          <Timeline 
            events={experiences}
          />
        </div>

        <div className="flex flex-col items-start justify-start">
          <Text className="text-4xl mb-4">{projectTranslations[language]}</Text>
          <Projects public_projects={public_projects} private_projects={private_projects}/>
        </div>
      </div>
    </div>
  );
}

export default Index;