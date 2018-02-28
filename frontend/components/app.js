import React from 'react';

import Songs from './songs';
import Header from './header';
import FilterForm from './filter-form';
import { api, asArray } from '../utils/api';

/**
 * Base CSS class
 */
const baseCls = 'app';

class App extends React.Component {

  constructor(props) {
    super(props);

    this.state = {
      filters: {
        songTitle: '',
        artistName: '',
        albumTitle: '',
      },
      songs: [],
    }
    this.onSubmit = this.onSubmit.bind(this);
    this.updateSongs = this.updateSongs.bind(this);
  }

  componentWillMount() {
    api(this.state.filters, this.updateSongs, () => console.log('error'));
  }

  onSubmit() {
    console.log('submitted');
  }

  updateSongs(songs) {
    this.setState({songs: asArray(songs)});
  }

  render() {
    return (
      <div className={baseCls}>
        <Header />
        <FilterForm onSubmit={this.onSubmit}/>
        <Songs songs={this.state.songs} />
      </div>
    );
  }
}

export default App;
