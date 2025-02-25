import { EnvelopeIcon, PhoneIcon } from "@heroicons/react/24/solid";
import { router } from "@inertiajs/react";
import { Select, Text } from "@switchdreams/ui";
import React from "react";

const Hero = ({personalInfo}) => {
  console.log(personalInfo.find((info) => info.label === "title"))
  return (
    <div className="flex w-full mt-6 md:mt-28 items-center justify-center">
      <div className="flex flex-col w-3/4 md:w-1/2">
        <div className="mb-4">
          <Text className="text-4xl">Bernardo Manciola Lobo</Text>
          <Text className="text-lg">{personalInfo.find((info) => info.label === "title").description}</Text>
        </div>
        <Text className="text-xl">{personalInfo.find((info) => info.label === "description").description}</Text>
        <div className="flex">
          <PhoneIcon className="w-6 mr-2"/>
          {personalInfo.find((info) => info.label === "phone").description}
        </div>
        <div className="flex">
          <EnvelopeIcon className="w-5 mr-2" />
          {personalInfo.find((info) => info.label === "email").description}
        </div>
      </div>
      {/* <div className="absolute right-6 top-52">
        <img src={"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cheeseburger.jpg/640px-Cheeseburger.jpg"} />
      </div> */}
    </div>
  );
}

export default Hero;