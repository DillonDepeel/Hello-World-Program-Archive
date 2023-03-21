import renderer from 'react-test-renderer';

describe ('Articles Tests', ()=> {

it('Render works correctly', () => {
  const tree= renderer.create(<div>Hello world</div>).toJSON();
  expect(tree).toMatchSnapshot();
});

});
