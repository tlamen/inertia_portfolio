import { ArrowRightEndOnRectangleIcon, Bars3Icon } from "@heroicons/react/24/outline";
import { PencilIcon } from "@heroicons/react/24/solid";
import { router, usePage } from "@inertiajs/react";
import { Text } from "@switchdreams/ui";
import React, { useState } from "react";

import { imagePath } from "@/utils";

import HomeHeader from "./HomeHeader";

const NavbarItem = ({ isActive = false, name, href }) => {
  return (
    <div
      className="group relative flex h-20 cursor-pointer flex-col items-center justify-center transition-all"
      onClick={() => router.visit(href)}
    >
      <Text
        size="md"
        className={`px-4 font-medium transition-all ${isActive ? "text-secondary-950" : "text-secondary-500 group-hover:text-secondary-950"}`}
      >
        {name}
      </Text>
      <div
        className={`absolute left-0 rounded-r-2xl bg-primary-400 transition-all duration-200 max-lg:h-full lg:bottom-0 ${isActive ? "w-1.5 lg:h-1.5" : "w-0 group-hover:max-lg:w-1.5 lg:h-0 group-hover:lg:h-1.5"} lg:w-full lg:rounded-t-2xl`}
      ></div>
    </div>
  );
};

const navbarLinks = (url, currentUserRole) => {
  const items = [
    // {
    //   name: "Dashboard",
    //   href: "/",
    // },
    {
      name: "Conversas",
      href: "/conversations",
    },
    // {
    //   name: "Usuários",
    //   href: "/",
    // },
    {
      name: "Perfil",
      href: "/profile/account",
    },
  ];

  if (currentUserRole !== "reviewer")
    items.push(
      { name: "Tutorial", href: "/tutorial" },
      { name: "Loja de créditos", href: "/choose_plan" },
    );

  return items.map((item) =>
    item.href === url || (item.href.split("/")[1] === "profile" && url.split("/")[1] === "profile")
      ? { ...item, isActive: true }
      : item,
  );
};

const Navbar = () => {
  const [isOpen, setIsOpen] = useState(false);
  const { url } = usePage();
  const { currentUser } = usePage().props;

  const noHeaderPages = ["/choose_period"];

  if (noHeaderPages.includes(url)) {
    return <></>;
  }

  const handleOnClick = () => {
    setIsOpen((cur) => !cur);
  };

  if (url === "/" || !currentUser || url.split("/").pop()[0] === "#") {
    return <HomeHeader />;
  }

  return (
    currentUser && (
      <>
        <div className="fixed z-20 flex h-20 w-full items-center justify-center border-b border-solid bg-white">
          <div className="relative flex w-full max-w-screen-lg items-center justify-between">
            <img src={imagePath("logo.svg")} onClick={() => router.visit("/")} alt="logo" />
            <div className="absolute inset-x-0 me-auto ms-auto flex w-fit items-center justify-center gap-1 font-default max-lg:hidden">
              {navbarLinks(url, currentUser.role).map((link) => (
                <NavbarItem {...link} key={link.name} />
              ))}
            </div>
            <div className="flex items-center justify-center gap-2">
              {currentUser.role !== "reviewer" && (
                <div
                  className="flex cursor-pointer items-center justify-center gap-1.5 rounded-xl border border-solid border-secondary-100 p-2.5"
                  onClick={() => router.get("/profile/history")}
                >
                  <div className="flex size-5 items-center justify-center rounded-full bg-primary-500">
                    <PencilIcon className="size-3 text-white" />
                  </div>
                  <Text className="font-semibold text-primary-500">{currentUser?.credits}</Text>
                </div>
              )}
              {/*<div className="flex cursor-pointer items-center justify-center rounded-xl border border-solid border-secondary-100 p-2.5">*/}
              {/*  <div className="relative flex size-6 items-center justify-center">*/}
              {/*    <BellIcon className="size-5 text-secondary-500" />*/}
              {/*    <div className="absolute right-0.5 top-px size-2 rounded-full bg-error-500"></div>*/}
              {/*  </div>*/}
              {/*</div>*/}
              <div className="flex cursor-pointer items-center justify-center gap-2 rounded-xl border border-solid border-secondary-100 p-2.5">
                Sair
                <div className="relative flex size-5 items-center justify-center">
                  <ArrowRightEndOnRectangleIcon
                    className="size-5"
                    onClick={() => {
                      if (confirm("Gostaria de deslogar de sua conta?")) router.delete("/sign_out");
                    }}
                  />
                </div>
              </div>
              <div
                className="flex cursor-pointer items-center justify-center rounded-xl border border-solid border-secondary-100 p-2.5 lg:hidden"
                onClick={handleOnClick}
              >
                <Bars3Icon className="size-5 text-secondary-500" />
              </div>
            </div>
          </div>
        </div>
        {/* empty div with the same size as the header to avoid things being behind the header */}
        <div className="h-20"></div>
        <div
          className={`fixed right-0 top-20 z-10 flex h-screen flex-col gap-2 overflow-hidden border-l border-solid border-secondary-50 bg-white py-2 transition-all duration-500 lg:hidden ${isOpen ? "w-full sm:w-3/4 md:w-1/2" : "w-0"}`}
        >
          {navbarLinks(url, currentUser.role).map((link) => (
            <NavbarItem key={link.name} {...link} />
          ))}
        </div>
      </>
    )
  );
};

export default Navbar;
