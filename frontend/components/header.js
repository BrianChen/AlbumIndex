import React from 'react';

/**
 * Header component
 */
const Header = () => {
  /**
   * Base CSS class
   */
  const baseCls = 'header';

  return (
    <div className={baseCls}>
      <span className={baseCls+'__item'}>
        Album Index
      </span>
    </div>
  );
};

export default Header;
