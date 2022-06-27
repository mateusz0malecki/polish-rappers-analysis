"""Create table

Revision ID: df5fb542816f
Revises: 
Create Date: 2022-06-27 16:21:04.636161

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'df5fb542816f'
down_revision = None
branch_labels = None
depends_on = None


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('musicians',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(length=32), nullable=True),
    sa.Column('full_name', sa.String(length=32), nullable=True),
    sa.Column('number_of_words_10000', sa.Integer(), nullable=True),
    sa.Column('number_of_words_20000', sa.Integer(), nullable=True),
    sa.Column('number_of_words_30000', sa.Integer(), nullable=True),
    sa.Column('number_of_words_all', sa.Integer(), nullable=True),
    sa.Column('most_common_10000', sa.String(length=256), nullable=True),
    sa.Column('most_common_20000', sa.String(length=256), nullable=True),
    sa.Column('most_common_30000', sa.String(length=256), nullable=True),
    sa.Column('most_common_all', sa.String(length=256), nullable=True),
    sa.Column('updated_at', sa.DateTime(timezone=True), nullable=True),
    sa.Column('created_at', sa.DateTime(timezone=True), server_default=sa.text('now()'), nullable=True),
    sa.PrimaryKeyConstraint('id'),
    sa.UniqueConstraint('full_name'),
    sa.UniqueConstraint('name')
    )
    op.create_index(op.f('ix_musicians_id'), 'musicians', ['id'], unique=False)
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_index(op.f('ix_musicians_id'), table_name='musicians')
    op.drop_table('musicians')
    # ### end Alembic commands ###