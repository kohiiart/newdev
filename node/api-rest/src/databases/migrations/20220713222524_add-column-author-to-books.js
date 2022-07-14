/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function(knex) {
  return knex.schema.alterTable('books', function(table){
    table
        .integer('authorId')
        .unsigned()
        .notNullable()
        .references('id')
        .inTable('authors')
        .onDelete('CASCADE')
  })
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function(knex) {
  return knex.schema.alterTable('authors', function(table){
    table.dropForeign('authorId')
    table.dropColumn('authorId')
  })

};
