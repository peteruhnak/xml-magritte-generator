I am class description (attributes, methods, ...).

I didn't use RBClass/RBNamespace directly, because adding attributes is really slow when adding them one by one (which is what RB does). So instead I add them to the initial class description, which is fast.