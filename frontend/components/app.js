import React from 'react';

import Songs from './songs';
import Header from './header';
import FilterForm from './filter-form';

/**
 * Base CSS class
 */
const baseCls = 'app';

class App extends React.Component {

  constructor(props) {
    super(props);

    this.state = {
      songs: [{
"id": 6,
"title": "SongTitle6",
"artist": {
"id": 6,
"name": "ArtistName6"
},
"album": {
"id": 6,
"title": "AlbumTitle6"
}
}],
    }
    this.onSubmit = this.onSubmit.bind(this);
  }

  onSubmit() {
    console.log('submitted');
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
