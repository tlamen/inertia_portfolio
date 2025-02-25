import { EnvelopeIcon, PhoneIcon } from "@heroicons/react/24/solid";
import { router } from "@inertiajs/react";
import { Select, Text } from "@switchdreams/ui";
import React from "react";

const Timeline = ({events}) => {
  return (
    <div className="flex flex-col w-full">
      {events.map((event, index) => {
        if ((index + 1) != events.length) {
          return (
            <div className="flex w-full">
              <div className="flex flex-col items-center mr-10 md:mr-20">
                <div key={index} className="flex w-6 h-6 md:w-12 md:h-14 rounded-full bg-[#F1FAEE] border-8 border-[#457B9D]"/>
                <div className="h-full bg-[#457B9D] w-2"/>
              </div>
              <div className="w-full pb-12">
                <Text className="text-4xl">{event.company}</Text>
                <Text className="text-lg">{event.start_date} - {event.end_date}</Text>
                <Text className="text-lg">{event.role}</Text>
                <Text>{event.description}</Text>
              </div>
            </div>
          )
        } else {
          return (
            <div className="flex w-full">
              <div className="flex flex-col items-center mr-10 md:mr-20">
                <div key={index} className="flex w-6 h-6 md:w-12 md:h-12 rounded-full bg-[#F1FAEE] border-8 border-[#457B9D]"/>
              </div>
              <div className="w-full">
                <div className="flex flex-col w-full">
                  <Text className="text-4xl">{event.company}</Text>
                  <Text className="text-lg">{event.start_date} - {event.end_date}</Text>
                  <Text className="text-lg">{event.role}</Text>
                  <Text>{event.description}</Text>
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