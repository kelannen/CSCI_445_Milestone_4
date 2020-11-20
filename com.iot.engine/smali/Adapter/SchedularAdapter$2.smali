.class LAdapter/SchedularAdapter$2;
.super Ljava/lang/Object;
.source "SchedularAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/SchedularAdapter;->showDialog(Ljava/util/HashMap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/SchedularAdapter;

.field final synthetic val$mMap:Ljava/util/HashMap;

.field final synthetic val$mPosition:I


# direct methods
.method constructor <init>(LAdapter/SchedularAdapter;Ljava/util/HashMap;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/SchedularAdapter;

    .prologue
    .line 153
    iput-object p1, p0, LAdapter/SchedularAdapter$2;->this$0:LAdapter/SchedularAdapter;

    iput-object p2, p0, LAdapter/SchedularAdapter$2;->val$mMap:Ljava/util/HashMap;

    iput p3, p0, LAdapter/SchedularAdapter$2;->val$mPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 156
    packed-switch p2, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 158
    :pswitch_0
    iget-object v2, p0, LAdapter/SchedularAdapter$2;->this$0:LAdapter/SchedularAdapter;

    iget-object v2, v2, LAdapter/SchedularAdapter;->session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, LAdapter/SchedularAdapter$2;->this$0:LAdapter/SchedularAdapter;

    iget-object v2, v2, LAdapter/SchedularAdapter;->session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    :cond_0
    iget-object v2, p0, LAdapter/SchedularAdapter$2;->this$0:LAdapter/SchedularAdapter;

    iget-object v2, v2, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    const-string v3, "Oops you don\'t have a permission for this"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 162
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, LAdapter/SchedularAdapter$2;->this$0:LAdapter/SchedularAdapter;

    iget-object v2, v2, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    const-class v3, Lcom/iot/engine/Schedular_Activity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, LDatabase/DatabaseHandler;

    iget-object v2, p0, LAdapter/SchedularAdapter$2;->this$0:LAdapter/SchedularAdapter;

    iget-object v2, v2, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, "db":LDatabase/DatabaseHandler;
    const-string v3, "SwitchInfo"

    iget-object v2, p0, LAdapter/SchedularAdapter$2;->val$mMap:Ljava/util/HashMap;

    const-string v4, "SwitchID"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, LDatabase/DatabaseHandler;->getSwitchInfoBySwitchId(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 165
    const-string v2, "Operation"

    const-string v3, "EDIT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v2, "EditInfo"

    iget-object v3, p0, LAdapter/SchedularAdapter$2;->val$mMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 167
    iget-object v2, p0, LAdapter/SchedularAdapter$2;->this$0:LAdapter/SchedularAdapter;

    iget-object v2, v2, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, LAdapter/SchedularAdapter$2;->this$0:LAdapter/SchedularAdapter;

    iget-object v2, v2, LAdapter/SchedularAdapter;->session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, LAdapter/SchedularAdapter$2;->this$0:LAdapter/SchedularAdapter;

    iget-object v2, v2, LAdapter/SchedularAdapter;->session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    :cond_2
    iget-object v2, p0, LAdapter/SchedularAdapter$2;->this$0:LAdapter/SchedularAdapter;

    iget-object v2, v2, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    const-string v3, "Oops you don\'t have a permission for this"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 176
    :cond_3
    iget-object v2, p0, LAdapter/SchedularAdapter$2;->this$0:LAdapter/SchedularAdapter;

    iget-object v3, p0, LAdapter/SchedularAdapter$2;->val$mMap:Ljava/util/HashMap;

    iget v4, p0, LAdapter/SchedularAdapter$2;->val$mPosition:I

    invoke-static {v2, v3, v4}, LAdapter/SchedularAdapter;->access$000(LAdapter/SchedularAdapter;Ljava/util/HashMap;I)V

    goto/16 :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
