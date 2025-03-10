import React from 'react';

const ProgressBar = ({ progress }) => {
  return (
    <div className="w-full h-2 bg-gray-200 rounded-full overflow-hidden relative">
      <div
        className="h-full bg-[#1D3557] rounded-full transition-all duration-300"
        style={{ width: `${progress}%` }}
      ></div>
    </div>
  );
};

export default ProgressBar;