'use strict'

const React = require('react')
const { shallow } = require('enzyme')

describe('Table', () => {
  const { Table: { WrappedComponent: Table } } =
    __require('components/items/table')

  it('has class item-list-view', () => {
    expect(shallow(<Table items={[]} columns={[]}/>))
      .to.have.className('item-list-view')
  })
})