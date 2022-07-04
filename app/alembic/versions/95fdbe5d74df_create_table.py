"""Create table

Revision ID: 95fdbe5d74df
Revises: 
Create Date: 2022-06-28 13:13:34.793945

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '95fdbe5d74df'
down_revision = None
branch_labels = None
depends_on = None


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('musician',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(length=32), nullable=True),
    sa.Column('artist_name', sa.String(length=32), nullable=True),
    sa.Column('number_of_words_10000', sa.Integer(), nullable=True),
    sa.Column('number_of_words_20000', sa.Integer(), nullable=True),
    sa.Column('number_of_words_30000', sa.Integer(), nullable=True),
    sa.Column('number_of_words_all', sa.Integer(), nullable=True),
    sa.Column('ranking_10000', sa.Integer(), nullable=True),
    sa.Column('ranking_20000', sa.Integer(), nullable=True),
    sa.Column('ranking_30000', sa.Integer(), nullable=True),
    sa.Column('ranking_all', sa.Integer(), nullable=True),
    sa.Column('most_common_10000', sa.String(length=256), nullable=True),
    sa.Column('most_common_20000', sa.String(length=256), nullable=True),
    sa.Column('most_common_30000', sa.String(length=256), nullable=True),
    sa.Column('most_common_all', sa.String(length=256), nullable=True),
    sa.Column('updated_at', sa.DateTime(timezone=True), nullable=True),
    sa.Column('created_at', sa.DateTime(timezone=True), server_default=sa.text('now()'), nullable=True),
    sa.PrimaryKeyConstraint('id'),
    sa.UniqueConstraint('artist_name'),
    sa.UniqueConstraint('name')
    )
    op.create_index(op.f('ix_musician_id'), 'musician', ['id'], unique=False)
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_index(op.f('ix_musician_id'), table_name='musician')
    op.drop_table('musician')
    # ### end Alembic commands ###
