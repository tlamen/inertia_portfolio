import defaultColors from "./app/frontend/constants/colors";

module.exports = {
  content: [
    "app/**/*.html.erb",
    "app/frontend/**/*.jsx",
    "./node_modules/@switchdreams/ui/dist/**/*.js",
  ],
  theme: {
    extend: {
      colors: {
        ...defaultColors,
        btn: {
          primary: {
            bg: defaultColors.primary["300"],
            hover: defaultColors.primary["400"],
            active: defaultColors.primary["500"],
            focus: defaultColors.primary["300"],
            text: defaultColors.gray["white"],
          },
          outline: {
            bg: defaultColors.gray.white,
            hover: defaultColors.primary["25"],
            active: defaultColors.primary["100"],
            focus: defaultColors.gray.white,
            text: defaultColors.coolGray["800"],
          },
        },
        checkbox: {
          primary: {
            border: defaultColors.primary["400"],
            checked: defaultColors.primary["400"],
            hover: defaultColors.primary["200"],
          },
        },
      },
      fontFamily: {
        default: ["Poppins", "sans-serif"], //.. Opcional
      },
      flex: {
        3: "3 3 0%",
        4: "4 4 0%",
        5: "5 5 0%",
        6: "6 6 0%",
        7: "7 7 0%",
        8: "8 8 0%",
      },
    },
  },
};
