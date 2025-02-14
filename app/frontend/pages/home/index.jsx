import React from "react";

const Index = () => {
  return (
    <>
      <div className="border bg-sky-500">
        oiiii
      </div>
      <h1 className="text-3xl text-red-200 font-bold p-8">Hello World!!</h1>
      <div className="flex w-full justify-center">
        <button className="" onClick={() => console.log("hello")}>Teste</button>
      </div>
    </>
  );
}

export default Index;