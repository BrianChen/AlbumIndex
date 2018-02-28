import React from 'react';
import PropTypes from 'prop-types';

import Button from './button';

const noop = () => {};

/**
 * Prop Types
 * @private
 */
const propTypes = {
  onSubmit: PropTypes.func,
};

/**
 * Base CSS class
 */
const baseCls = 'filter-form';

class FilterForm extends React.Component {

  constructor(props) {
    super(props);

    this.state = {
      songTitle: '',
      artistName: '',
      albumTitle: '',
    }

    this.onChange = this.onChange.bind(this);
    this.onSubmit = this.onSubmit.bind(this);
  }

  onChange(property) {
    return e => this.setState({[property]: e.target.value});
  }

  onSubmit(e) {
    e.preventDefault();
    const filters = this.state;
    this.props.onSubmit(filters);
  }

  render() {
    return (
      <form className={baseCls} onSubmit={this.onSubmit}>
        <input
          className={baseCls + '__input'}
          onChange={this.onChange('songTitle')}
          placeholder="Enter a song title"
          value={this.state.songTitle}
        />
        <input
          className={baseCls + '__input'}
          onChange={this.onChange('artistName')}
          placeholder="Enter an artist"
          value={this.state.artistName}
        />
        <input
          className={baseCls + '__input'}
          onChange={this.onChange('albumTitle')}
          placeholder="Enter an ablum title"
          value={this.state.albumTitle}
        />
        <Button
          text="Search"
          onClick={this.onSubmit}
        />
      </form>
    );
  }
}

export default FilterForm;
