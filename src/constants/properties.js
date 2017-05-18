'use strict'

module.exports = {
  LOAD: 'properties.load',
  RESTORE: 'properties.restore',
  UPDATE: 'properties.update',

  TR: {
    BOX: 'https://tropy.org/schema/v1/core#box',
    FOLDER: 'https://tropy.org/schema/v1/core#folder',
    PIECE: 'https:/tropy.org/schema/v1/core#piece'
  },

  DC: {
    CONTRIBUTOR: 'http://purl.org/dc/elements/1.1/contributor',
    COVERAGE: 'http://purl.org/dc/elements/1.1/coverage',
    CREATOR: 'http://purl.org/dc/elements/1.1/creator',
    DATE: 'http://purl.org/dc/elements/1.1/date',
    DESCRIPTION: 'http://purl.org/dc/elements/1.1/description',
    FORMAT: 'http://purl.org/dc/elements/1.1/format',
    IDENTIFIER: 'http://purl.org/dc/elements/1.1/identifier',
    LANGUAGE: 'http://purl.org/dc/elements/1.1/language',
    PUBLISHER: 'http://purl.org/dc/elements/1.1/publisher',
    RELATION: 'http://purl.org/dc/elements/1.1/relation',
    RIGHTS: 'http://purl.org/dc/elements/1.1/rights',
    SOURCE: 'http://purl.org/dc/elements/1.1/source',
    SUBJECT: 'http://purl.org/dc/elements/1.1/subject',
    TITLE: 'http://purl.org/dc/elements/1.1/title',
    TYPE: 'http://purl.org/dc/elements/1.1/type'
  },

  S: {
    RECIPIENT: 'http://schema.org/recipient'
  }
}
