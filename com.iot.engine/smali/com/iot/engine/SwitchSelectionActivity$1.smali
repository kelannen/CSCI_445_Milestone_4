.class Lcom/iot/engine/SwitchSelectionActivity$1;
.super Ljava/lang/Object;
.source "SwitchSelectionActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/SwitchSelectionActivity;->initializeControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/SwitchSelectionActivity;


# direct methods
.method constructor <init>(Lcom/iot/engine/SwitchSelectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/SwitchSelectionActivity;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/iot/engine/SwitchSelectionActivity$1;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 175
    const-string v2, "SwitchSelectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Menu onCheckedChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-eqz p2, :cond_0

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity$1;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    iget-object v2, v2, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity$1;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    iget-object v2, v2, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 179
    .local v1, "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "selected_switch"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity$1;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    iget-object v2, v2, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "i":I
    .end local v1    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity$1;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    iget-object v2, v2, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity$1;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    iget-object v2, v2, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 186
    .restart local v1    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "selected_switch"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity$1;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    iget-object v2, v2, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    .end local v1    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity$1;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    invoke-static {v2}, Lcom/iot/engine/SwitchSelectionActivity;->access$000(Lcom/iot/engine/SwitchSelectionActivity;)V

    .line 192
    return-void
.end method
