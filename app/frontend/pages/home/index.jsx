import { Button, Text } from "@switchdreams/ui";
import React from "react";
import Header from "../../components/Header";
import Hero from "../../components/Hero";
import Timeline from "../../components/Timeline";
import Projects from "../../components/Projects";
import Skills from "../../components/Skills";
import Footer from "../../components/Footer";

const Index = ({language, languageOptions, personalInfo, experiences, public_projects, private_projects, skills}) => {  
  const projectTranslations = {
    "en": "Projects",
    "pt": "Projetos",
    "es": "Proyectos"
  }

  const skillTranslations = {
    "en": "Skills",
    "pt": "Habilidades",
    "es": "Habilidades"
  }

  const skillDescriptionTranslations = {
    "en": "Here are the technologies I use and am interested in to participate in projects!",
    "pt": "Aqui estão as tecnologias que uso e que estou interessado para participar em projetos!",
    "es": "Aqui están las tecnologías que uso y que estoy interesado para participar en proyectos!"
  }
  return (
    <div className="bg-[#F1FAEE] w-full text-black flex flex-col justify-center items-center">
      <Header language={language} languageOptions={languageOptions} />
      <div className="w-3/4">
        <div className="md:pt-10 pt-28">
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

        <div className="flex flex-col items-start justify-start py-12">
          <Text className="text-4xl">{skillTranslations[language]}</Text>
          <Text className="text-md mb-4">{skillDescriptionTranslations[language]}</Text>
          <Skills skills={skills}/>
        </div>
      </div>
      
      <Footer />
    </div>
  );
}

export default Index;