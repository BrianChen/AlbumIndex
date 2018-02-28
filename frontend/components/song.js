import React from 'react';
import PropTypes from 'prop-types';

/**
 * Base CSS class
 */
const baseCls = 'song';

const Song = ({title, artist, album}) => {
  return (
    <div className={baseCls}>
      Title:{title} Artist={artist} Album:{album}
    </div>
  );
}

export default Song;
