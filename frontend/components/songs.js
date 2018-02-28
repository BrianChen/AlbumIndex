import React from 'react';
import PropTypes from 'prop-types';

import Song from './song';

const noop = () => {};

/**
 * Base CSS class
 */
const baseCls = 'songs';

const Songs = ({songs}) => {

  const renderSongs = () => {
    return songs.map((song, index) => {
      return (
        <Song
          key={index}
          index={index+1}
          title={song.title}
          artist={song.artist.name}
          album={song.album.title}
        />
      )
    });
  }
  return (
    <div className="table-div">
      <table className={baseCls} align="center">
        <thead>
          <tr>
            <th>#</th>
            <th>Song Title</th>
            <th>Artist Name</th>
            <th>Album Title</th>
          </tr>
        </thead>
        <tbody>
          {renderSongs()}
        </tbody>
      </table>
    </div>
  );
}

export default Songs;
