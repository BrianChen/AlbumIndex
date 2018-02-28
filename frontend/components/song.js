import React from 'react';
import PropTypes from 'prop-types';

/**
 * Base CSS class
 */
const baseCls = 'song';

const Song = ({index, title, artist, album}) => {
  return (
    <tr>
      <td>{index}</td>
      <td>{title}</td>
      <td>{artist}</td>
      <td>{album}</td>
    </tr>
  );
}

export default Song;
