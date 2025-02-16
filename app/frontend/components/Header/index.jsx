import { router } from "@inertiajs/react";
import { Select, Text } from "@switchdreams/ui";
import React from "react";

const Header = ({language, languageOptions}) => {
  return (
    <div className="flex justify-between w-full h-28 border-b pt-2 px-8 items-center fixed">
      <div>
        <div className="md:hidden text-xl">
          <Text className="text-2xl font-bold font-serif">B</Text>
          <Text className="text-2xl font-bold font-serif">M</Text>
          <Text className="text-2xl font-bold font-serif">L</Text>
        </div>
        <div className="hidden md:block">
          <Text className="text-2xl font-bold font-serif">B<span className="font-normal">ernardo</span></Text>
          <Text className="text-2xl font-bold font-serif">M<span className="font-normal">anciola</span></Text>
          <Text className="text-2xl font-bold font-serif">L<span className="font-normal">obo</span></Text>
        </div>
      </div>

      <div>
        <Text>Experiência</Text>
        <Text>Projetos</Text>
        <Text>Educação</Text>
        <Text>Habilidades</Text>
      </div>

      <div className="text-black w-40">
        <Select
          className="text-white w-full"
          options={languageOptions}
          value={languageOptions.find((l) => l.value === language)}
          onChange={(e) => router.get(`/${e.value}`)}
        />
      </div>
    </div>
  );
}

export default Header;