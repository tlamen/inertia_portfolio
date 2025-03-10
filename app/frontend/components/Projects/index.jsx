import { Text } from "@switchdreams/ui";
import React from "react";

const ProjectCard = ({project}) => {
  return (
    <div className="flex w-full my-2 border-l-2 border-[#1D3557] pl-2">
      <div className="flex flex-col w-full">
        <a href={project.url} target="_blank" className="text-3xl">{project.title}</a>
        <Text className="text-lg">{project.stakeholder}</Text>
        <Text>{project.description}</Text>
      </div>
    </div>
  )
}

const Projects = ({public_projects, private_projects}) => {
  return (
    <div className="flex flex-col w-full">
      {private_projects.map((project, index) => (
        <div key={index} >
          <ProjectCard project={project}/>
        </div>
      ))}
      <Text className="text-3xl">Open Source</Text>
      {public_projects.map((project, index) => (
        <div key={index} >
        <ProjectCard project={project}/>
      </div>
      ))}
    </div>
  );
}

export default Projects;