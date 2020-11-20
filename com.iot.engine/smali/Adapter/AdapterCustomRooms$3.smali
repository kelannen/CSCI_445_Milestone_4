.class LAdapter/AdapterCustomRooms$3;
.super Ljava/lang/Object;
.source "AdapterCustomRooms.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/AdapterCustomRooms;->onBindViewHolder(LAdapter/AdapterCustomRooms$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/AdapterCustomRooms;

.field final synthetic val$position:I

.field final synthetic val$session:LSession/SessionManager;


# direct methods
.method constructor <init>(LAdapter/AdapterCustomRooms;LSession/SessionManager;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/AdapterCustomRooms;

    .prologue
    .line 121
    iput-object p1, p0, LAdapter/AdapterCustomRooms$3;->this$0:LAdapter/AdapterCustomRooms;

    iput-object p2, p0, LAdapter/AdapterCustomRooms$3;->val$session:LSession/SessionManager;

    iput p3, p0, LAdapter/AdapterCustomRooms$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f050012

    const v6, 0x7f050011

    .line 125
    iget-object v3, p0, LAdapter/AdapterCustomRooms$3;->val$session:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DemoUser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 128
    iget-object v3, p0, LAdapter/AdapterCustomRooms$3;->this$0:LAdapter/AdapterCustomRooms;

    iget-object v4, v3, LAdapter/AdapterCustomRooms;->db:LDatabase/DatabaseHandler;

    iget-object v3, p0, LAdapter/AdapterCustomRooms$3;->this$0:LAdapter/AdapterCustomRooms;

    invoke-static {v3}, LAdapter/AdapterCustomRooms;->access$100(LAdapter/AdapterCustomRooms;)Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, LAdapter/AdapterCustomRooms$3;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "RoomId"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, LDatabase/DatabaseHandler;->getSwitches(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 129
    .local v2, "switchMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 131
    sget-object v3, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 132
    iget-object v3, p0, LAdapter/AdapterCustomRooms$3;->this$0:LAdapter/AdapterCustomRooms;

    iget-object v0, v3, LAdapter/AdapterCustomRooms;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 133
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, LAdapter/AdapterCustomRooms$3;->this$0:LAdapter/AdapterCustomRooms;

    iget-object v3, v3, LAdapter/AdapterCustomRooms;->context:Landroid/content/Context;

    const-class v4, Lcom/iot/engine/LivingRoom;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "RoomId"

    iget-object v3, p0, LAdapter/AdapterCustomRooms$3;->this$0:LAdapter/AdapterCustomRooms;

    invoke-static {v3}, LAdapter/AdapterCustomRooms;->access$100(LAdapter/AdapterCustomRooms;)Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, LAdapter/AdapterCustomRooms$3;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "RoomId"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v4, "RoomName"

    iget-object v3, p0, LAdapter/AdapterCustomRooms$3;->this$0:LAdapter/AdapterCustomRooms;

    invoke-static {v3}, LAdapter/AdapterCustomRooms;->access$100(LAdapter/AdapterCustomRooms;)Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, LAdapter/AdapterCustomRooms$3;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "RoomName"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v3, "NetWorkInfo"

    const-string v4, "WIFI"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {v0, v6, v7}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 167
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "switchMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local v2    # "switchMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    iget-object v3, p0, LAdapter/AdapterCustomRooms$3;->this$0:LAdapter/AdapterCustomRooms;

    iget-object v3, v3, LAdapter/AdapterCustomRooms;->context:Landroid/content/Context;

    invoke-static {v3}, LSession/NetworkConnectionInfo;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    iget-object v3, p0, LAdapter/AdapterCustomRooms$3;->this$0:LAdapter/AdapterCustomRooms;

    iget-object v0, v3, LAdapter/AdapterCustomRooms;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 141
    .restart local v0    # "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, LAdapter/AdapterCustomRooms$3;->this$0:LAdapter/AdapterCustomRooms;

    iget-object v3, v3, LAdapter/AdapterCustomRooms;->context:Landroid/content/Context;

    const-class v4, Lcom/iot/engine/LivingRoom;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "RoomId"

    iget-object v3, p0, LAdapter/AdapterCustomRooms$3;->this$0:LAdapter/AdapterCustomRooms;

    invoke-static {v3}, LAdapter/AdapterCustomRooms;->access$100(LAdapter/AdapterCustomRooms;)Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, LAdapter/AdapterCustomRooms$3;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "RoomId"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v4, "RoomName"

    iget-object v3, p0, LAdapter/AdapterCustomRooms$3;->this$0:LAdapter/AdapterCustomRooms;

    invoke-static {v3}, LAdapter/AdapterCustomRooms;->access$100(LAdapter/AdapterCustomRooms;)Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, LAdapter/AdapterCustomRooms$3;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "RoomName"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v3, "NetWorkInfo"

    const-string v4, "INTERNET"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {v0, v6, v7}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 148
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, LAdapter/AdapterCustomRooms$3;->this$0:LAdapter/AdapterCustomRooms;

    iget-object v3, v3, LAdapter/AdapterCustomRooms;->context:Landroid/content/Context;

    const-string v4, "Kindly check your network connection."

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 165
    .end local v2    # "switchMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    iget-object v3, p0, LAdapter/AdapterCustomRooms$3;->this$0:LAdapter/AdapterCustomRooms;

    iget v4, p0, LAdapter/AdapterCustomRooms$3;->val$position:I

    invoke-static {v3, v4}, LAdapter/AdapterCustomRooms;->access$200(LAdapter/AdapterCustomRooms;I)V

    goto :goto_0
.end method
