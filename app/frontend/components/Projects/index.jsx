import { Text } from "@switchdreams/ui";
import React from "react";

const Projects = ({public_projects, private_projects}) => {
  return (
    <div className="flex flex-col w-full">
      {private_projects.map((project, index) => (
        <div key={index} className="flex w-full">
          <div className="flex flex-col w-full">
            <a href={project.url} target="_blank" className="text-3xl">{project.title}</a>
            <Text className="text-lg">{project.stakeholder}</Text>
            <Text>{project.description}</Text>
          </div>
        </div>
      ))}
      <Text className="text-4xl">Open Source</Text>
      {public_projects.map((project, index) => (
        <div key={index} className="flex w-full">
          <div className="flex flex-col w-full">
            <a href={project.url} target="_blank" className="text-3xl">{project.title}</a>
            <Text className="text-lg">{project.stakeholder}</Text>
            <Text>{project.description}</Text>
          </div>
        </div>
      ))}
    </div>
  );
}

export default Projects;