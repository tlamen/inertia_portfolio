import { Text } from "@switchdreams/ui";
import React from "react";
import ProgressBar from "../ProgressBar";

const Skills = ({skills}) => {
  return (
    <div className="flex w-full flex-wrap">
      {skills.map((skill, index) => (
        <div className="flex w-full px-4 md:w-1/2" key={index}>
        <div className="flex flex-col w-full">
          <Text className="text-3xl">{skill.title}</Text>
          <ProgressBar progress={skill.rating / 5 * 100}/>
        </div>
      </div>
      ))}
    </div>
  );
}

export default Skills;