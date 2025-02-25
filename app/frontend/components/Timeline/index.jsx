import { EnvelopeIcon, PhoneIcon } from "@heroicons/react/24/solid";
import { router } from "@inertiajs/react";
import { Select, Text } from "@switchdreams/ui";
import React from "react";

const Timeline = ({events}) => {
  console.log(events)
  return (
    <div className="flex flex-col w-full">
      {events.map((event, index) => {
        if ((index + 1) != events.length) {
          return (
            <div className="flex w-full">
              <div className="flex flex-col items-center w-full">
                <div key={index} className="flex w-12 h-14 rounded-full bg-[#F1FAEE] border-8 border-[#457B9D]"/>
                <div className="h-full bg-[#457B9D] w-2"/>
              </div>
              <div className="w-full">
                <Text className="text-4xl">{event.title}</Text>
                <Text className="text-lg">{event.description}</Text>
              </div>
            </div>
          )
        } else {
          return (
            <div className="flex w-full">
              <div className="flex flex-col items-center w-full">
                <div key={index} className="flex w-12 h-12 rounded-full bg-[#F1FAEE] border-8 border-[#457B9D]"/>
              </div>
              <div className="w-full">
                <div className="flex flex-col w-full">
                  <Text className="text-4xl">{event.title}</Text>
                  <Text className="text-lg">{event.description}</Text>
                </div>
              </div>
            </div>
          )
        }
      })}
    </div>
  );
}

export default Timeline;