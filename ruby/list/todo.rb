class Todolist
  
  def initialize(list)
    @list = list
  end

  def list
    @list
  end

  def add_item(item)
    @list << item
  end

  def delete_item(item)
    @list.delete(item)
  end

  def get_item(index)
    @list[index]
  end
  
  def get_items
    @list
  end 

end


# describe TodoList do
#   let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

#   it "stores the list items given on initialization" do
#     expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
#   end

# list = Todolist.new(["do the dishes", "mow the lawn"])
# p list.get_items

# p list.get_item(1)

# p list.delete_item("mow the lawn")

# p list.add_item("sing")

