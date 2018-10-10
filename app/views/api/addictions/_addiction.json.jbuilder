json.id addiction.id
json.name addiction.name


# json.images do
#   json.array! addiction.images, partial: 'api/images/image', as: :image
# end

json.discounted addiction.is_discounted?

# json.supplier do
#   json.partial! addiction.supplier, partial: 'api/suppliers/supplier', as: :supplier
# end
