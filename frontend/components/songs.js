import React from 'react';
import PropTypes from 'prop-types';

import Song from './song';

const noop = () => {};

/**
 * Base CSS class
 */
const baseCls = 'todos';

const Songs = ({songs}) => {

  const renderSongs = () => {
    return songs.map(song => {
      return (
        <Song
          key={song.id}
          title={song.title}
          artist={song.artist.name}
          album={song.album.title}
        />
      )
    });
  }
  return (
    <ul className={baseCls}>
      {renderSongs()}
    </ul>
  );
}

export default Songs;
