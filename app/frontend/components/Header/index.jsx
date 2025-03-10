import { router } from "@inertiajs/react";
import { Select, Text } from "@switchdreams/ui";
import React from "react";

const Header = ({language, languageOptions}) => {
  return (
    <div className="flex flex-col w-full border-b-2 border-[#1D3557] pt-2 px-8 items-center fixed top-0 z-3 bg-[#F1FAEE]">
      <div className="flex justify-between w-full">
        <div className="text-[#1D3557]">
          <div className="sm:hidden text-lg">
            <Text className="text-2xl font-bold font-serif">B</Text>
            <Text className="text-2xl font-bold font-serif">M</Text>
            <Text className="text-2xl font-bold font-serif">L</Text>
          </div>
          <div className="hidden sm:block">
            <Text className="text-2xl font-bold font-serif">B<span className="font-normal">ernardo</span></Text>
            <Text className="text-2xl font-bold font-serif">M<span className="font-normal">anciola</span></Text>
            <Text className="text-2xl font-bold font-serif">L<span className="font-normal">obo</span></Text>
          </div>
        </div>

        <div className="text-[#1D3557] w-40">
          <Select
            className="w-full text-[#1D3557]"
            options={languageOptions}
            value={languageOptions.find((l) => l.value === language)}
            onChange={(e) => router.get(`/${e.value}`)}
          />
        </div>
      </div>
    </div>
  );
}

export default Header;