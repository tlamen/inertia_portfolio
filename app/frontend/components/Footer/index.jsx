import React from 'react';
import { FaLinkedin, FaGithub, FaInstagram, FaEnvelope } from 'react-icons/fa';

const Footer = () => {
  return (
    <footer className="py-6 w-full bg-[#1D3557]">
      <div className="container mx-auto px-4">
        <div className="flex justify-center space-x-6">
          <a
            href="https://www.linkedin.com/in/bernardomlobo"
            target="_blank"
            rel="noopener noreferrer"
            className="text-gray-300 hover:text-white transition-colors duration-300"
          >
            <FaLinkedin className="w-6 h-6" />
          </a>

          {/* GitHub */}
          <a
            href="https://www.github.com/tlamen"
            target="_blank"
            rel="noopener noreferrer"
            className="text-gray-300 hover:text-white transition-colors duration-300"
          >
            <FaGithub className="w-6 h-6" />
          </a>

          {/* Instagram */}
          <a
            href="https://www.instagram.com/bernardo_lobo_3"
            target="_blank"
            rel="noopener noreferrer"
            className="text-gray-300 hover:text-white transition-colors duration-300"
          >
            <FaInstagram className="w-6 h-6" />
          </a>

          {/* Email */}
          <a
            href="mailto:bernardolobo3@gmail.com"
            className="text-gray-300 hover:text-white transition-colors duration-300"
          >
            <FaEnvelope className="w-6 h-6" />
          </a>
        </div>

        {/* Footer Text */}
        <div className="mt-4 text-center text-gray-300">
          <p>&copy; {new Date().getFullYear()} Bernardo Manciola Lobo. All rights reserved.</p>
        </div>
      </div>
    </footer>
  );
};

export default Footer;