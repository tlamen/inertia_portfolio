import { router, usePage } from "@inertiajs/react";
import React from "react";

import { imagePath } from "@/utils";

const Footer = () => {
  const { url } = usePage();

  return (
    <footer className="h-fit w-full rounded-lg bg-white shadow dark:bg-gray-800">
      {(url === "/" || url.split("/").pop()[0] === "#") && (
        <div className="relative flex h-fit w-full items-center justify-center gap-10 overflow-hidden bg-primary-600 py-10 max-md:flex-col">
          <div className="hidden lg:block">
            <div className="absolute -left-6 -top-60 z-10 h-[280px] w-40 rotate-45 bg-primary-900"></div>
            <div className="absolute -left-28 top-4 h-[280px] w-40 rotate-[15deg] bg-primary-400"></div>
            <div className="absolute -bottom-[260px] -left-20 z-10 h-[280px] w-40 rotate-45 bg-primary-900"></div>
          </div>
          <h1 className="text-center text-2xl font-semibold text-white">
            Transcrições precisas e seguras hoje mesmo!
          </h1>
          <a
            className="font-poppins rounded-xl bg-white px-6 py-3 text-sm font-semibold text-primary-500"
            href="/choose_plan"
          >
            Escolha um plano
          </a>
          <div className="hidden lg:block">
            <div className="absolute -right-6 -top-60 z-10 h-[280px] w-40 -rotate-45 bg-primary-900"></div>
            <div className="absolute -right-28 top-4 h-[280px] w-40 -rotate-[15deg] bg-primary-400"></div>
            <div className="absolute -bottom-[260px] -right-20 z-10 h-[280px] w-40 -rotate-45 bg-primary-900"></div>
          </div>
        </div>
      )}
      <div className="flex w-full items-center justify-between bg-primary-800 py-12 max-lg:flex-col max-lg:gap-3 lg:px-36">
        {/*<div className="flex gap-6">*/}
        {/*  <a href="#">*/}
        {/*    {" "}*/}
        {/*    <img*/}
        {/*      src="https://sitesnahora.com.br/images/linkeldinBurger.svg"*/}
        {/*      className="w-6 md:w-5"*/}
        {/*      alt="linkedin-icon"*/}
        {/*    />*/}
        {/*  </a>*/}
        {/*  <a href="#">*/}
        {/*    {" "}*/}
        {/*    <img*/}
        {/*      src="https://sitesnahora.com.br/images/facebookBurger.svg"*/}
        {/*      className="w-6 md:w-5"*/}
        {/*      alt="linkedin-icon"*/}
        {/*    />*/}
        {/*  </a>*/}
        {/*  <a href="#">*/}
        {/*    {" "}*/}
        {/*    <img*/}
        {/*      src="https://sitesnahora.com.br/images/twitterBurger.svg"*/}
        {/*      className="w-6 md:w-5"*/}
        {/*      alt="linkedin-icon"*/}
        {/*    />*/}
        {/*  </a>*/}
        {/*</div>*/}
        <img
          className="mr-3 h-20 w-60 cursor-pointer object-contain"
          onClick={() => router.get("/")}
          src={imagePath("logo.svg")}
          alt="Logo"
        />
        <p className="font-regular font-poppins text-md text-coolGray-200">© 2024 SonicScript</p>
      </div>
    </footer>
  );
};

export default Footer;
